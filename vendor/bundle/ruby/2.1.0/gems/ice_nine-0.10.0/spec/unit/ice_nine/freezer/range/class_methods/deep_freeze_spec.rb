# encoding: utf-8

require 'spec_helper'
require 'ice_nine'

describe IceNine::Freezer::Range, '.deep_freeze' do
  subject { object.deep_freeze(value) }

  let(:object) { described_class }

  let(:element_class) do
    Class.new do
      attr_reader :number, :range
      protected :number, :range

      def initialize(number, range = nil)
        @number = number
        @range  = nil
      end

      def succ
        self.class.new(number.succ, range)
      end

      def <=>(other)
        range <=> other.range && number <=> other.number
      end

      # allow for circular references
      def range=(range)
        @range = range
      end
    end
  end

  shared_examples 'IceNine::Freezer::Range.deep_freeze' do
    it 'returns the object' do
      should be(value)
    end

    it 'freezes the object' do
      expect { subject }.to change(value, :frozen?).from(false).to(true)
    end

    it 'freeze the first object in the Range' do
      expect(subject.begin).to be_frozen
    end

    it 'freeze the last object in the Range' do
      expect(subject.end).to be_frozen
    end
  end

  context 'with a Range' do
    let(:value) { element_class.new(1)..element_class.new(100) }

    context 'without a circular reference' do
      it_behaves_like 'IceNine::Freezer::Range.deep_freeze'
    end

    context 'with a circular reference in the first element' do
      before { value.begin.range = value }

      it_behaves_like 'IceNine::Freezer::Range.deep_freeze'
    end

    context 'with a circular reference in the last element' do
      before { value.end.range = value }

      it_behaves_like 'IceNine::Freezer::Range.deep_freeze'
    end
  end
end

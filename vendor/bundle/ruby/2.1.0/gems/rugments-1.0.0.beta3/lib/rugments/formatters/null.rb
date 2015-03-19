module Rugments
  module Formatters
    # A formatter which renders nothing.
    class Null < Formatter
      tag 'null'

      def initialize(*)
      end

      def stream(tokens, &_b)
        tokens.each do |tok, val|
          yield "#{tok} #{val.inspect}\n"
        end
      end
    end
  end
end

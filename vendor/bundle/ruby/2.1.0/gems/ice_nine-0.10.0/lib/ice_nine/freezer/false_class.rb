# encoding: utf-8

module IceNine
  class Freezer

    # Skip freezing false objects
    class FalseClass < NoFreeze; end

  end # class Freezer
end # module IceNine

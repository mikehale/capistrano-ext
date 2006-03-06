module Capistrano
  module Ext
    module Version #:nodoc:
      MAJOR = 1
      MINOR = 0
      TINY  = 2

      STRING = [MAJOR, MINOR, TINY].join(".")
    end
  end
end

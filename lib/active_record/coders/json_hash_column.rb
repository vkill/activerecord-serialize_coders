module ActiveRecord
  module Coders
    class JsonHashColumn

      attr_accessor :require_update

      def initialize(options = {})
        @require_update = options.delete(:require_update){ false }
      end

      def dump(hash)
        ::JSON.dump(hash || {})
      end

      def load(hash)
        ::HashWithIndifferentAccess.new ::JSON.load(hash || "{}")
      end

    end
  end
end

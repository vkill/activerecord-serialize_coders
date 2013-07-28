module ActiveRecord
  module Coders
    class StringIdsColumn

      attr_accessor :require_update

      def initialize(options = {})
        @require_update = options.delete(:require_update){ false }
      end

      def dump(ids)
        Array(ids).delete_if{|x| x == ''}.join(',')
      end

      def load(ids)
        ids.to_s.split(',').map(&:to_i)
      end

    end
  end
end

module ActiveRecord
  module SerializeCoders
    module DirtyExtension

      extend ::ActiveSupport::Concern

      included do
        if ::Rails.version > '4'
          include Rail4InstanceMethods
          alias_method_chain :keys_for_partial_write, :specify_serialize
        else
          include Rail3InstanceMethods
        end
      end

      module Rail4InstanceMethods

        private

        def keys_for_partial_write_with_specify_serialize
          _keys_for_partial_write
        end
      end

      module Rail3InstanceMethods

        private

        def update(*)
          if partial_updates?
            super(_keys_for_partial_write)
          else
            super
          end
        end
      end

      private

      def _keys_for_partial_write
        require_update_serialized_attributes = self.class.serialized_attributes.select do |key, coder|
          coder.respond_to?(:require_update) and coder.require_update
        end

        changed | (attributes.keys & require_update_serialized_attributes.keys)
      end

    end
  end
end

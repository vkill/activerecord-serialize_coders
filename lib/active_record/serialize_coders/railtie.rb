require "active_record/serialize_coders/dirty_extension"

module ActiveRecord
  module SerializeCoders
    class Railtie < ::Rails::Railtie
      
      initializer 'active_record-serialize_coders' do |app|
        ActiveSupport.on_load :active_record do
          include ::ActiveRecord::SerializeCoders::DirtyExtension
        end
      end

    end
  end
end

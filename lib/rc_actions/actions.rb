module Programmable
  module ResourceController
    module Actions
      extend Programmable::ResourceController::AddCommonActions

      add_common_actions

      include Programmable::ResourceController::ServiceMethods

      declarations do
        before_filter :assign_new_resource, :only => [:new, :create]
        before_filter :assign_find_resource,  :only => [:show, :edit, :update, :destroy]
        before_filter :assign_find_resources, :only => [:index]
      end

      def index
      end
    end

    module SingletonActions
      extend Programmable::ResourceController::AddCommonActions

      add_common_actions

      include Programmable::ResourceController::ServiceMethods

      declarations do
        before_filter :assign_new_resource, :only => [:new, :create]
        before_filter :assign_find_resource,  :only => [:show, :edit, :update, :destroy]
      end

      def after_destroy_url
        if enclosing_resource
          enclosing_resource_path
        else
          root_path
        end
      end
    end
  end
end

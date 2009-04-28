module Programmable
  module ResourceController
    module CommonActions
      def show
      end

      def new
      end

      def create
        @resource_saved = resource.save
        response_for_create
      end

      def edit
      end

      def update
        @resource_saved = resource.update_attributes params[resource_name]
        response_for_update
      end

      def destroy
        response_for_destroy resource.destroy
      end

      private

      def response_for_create
        if @resource_saved
          flash[:notice] = "#{resource_name.humanize} was successfully created."
          redirect_to after_create_url
        else
          render :action => "new"
        end
      end

      def response_for_update
        if @resource_saved
          flash[:notice] = "#{resource_name.humanize} was successfully updated."
          redirect_to after_update_url
        else
          render :action => "edit"
        end
      end

      def response_for_destroy status
        if status
          flash[:notice] = "#{resource_name.humanize} was successfully deleted."
        else
          flash[:notice] = "#{resource_name.humanize} can't be deleted."
        end
        redirect_to after_destroy_url
      end

      def after_create_url
        resource_path
      end                     

      def after_update_url
        resource_path
      end

      def after_destroy_url
        resources_path
      end

      def response_for_ajax
        respond_to do |format|
          format.html { redirect_to :back }
          format.js
        end
      end

      def assign_new_resource
        self.resource = new_resource
      end

      def assign_find_resource
        self.resource = find_resource
      end

      def assign_find_resources
        self.resources = find_resources
      end
    end
  end
end

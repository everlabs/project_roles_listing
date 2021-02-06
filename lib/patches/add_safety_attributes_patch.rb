module ProjectRolesListing
  module RolePatch
    def self.included(base)
      base.send(:include, InstanceMethods)
      base.class_eval do
        safe_attributes 'show_in_admin_projects'
      end
    end

    module InstanceMethods
      def allowed_to_view
        self.where(show_in_admin_projects: true)
      end
    end
  end
end

Role.send(:include, ProjectRolesListing::RolePatch)

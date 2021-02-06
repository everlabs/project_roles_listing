module ProjectRolesListing
  module RolePatch
    def self.included(base)
      base.class_eval do
        safe_attributes 'show_in_admin_projects'
      end
    end
  end
end

Role.send(:include, ProjectRolesListing::RolePatch)

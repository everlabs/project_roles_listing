class AddShowInAdminProjectsColumnToRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :show_in_admin_projects, :boolean, default: false
  end
end

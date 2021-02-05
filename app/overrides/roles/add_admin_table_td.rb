Deface::Override.new(
  virtual_path: "admin/projects",
  name: "users_to_table_columns",
  replace: "erb[loud]:contains('checked_image project.is_public?')",
  text: "<%= checked_image project.is_public? %>
         <% Role.where(show_in_admin_projects: true).each do |role| %>
            <% users = project.members.includes(:roles).where(roles: { id: role.id }).map(&:user) %>
            <td>
              <% users.each do |user| %>
                <p><%= link_to_user user %></p>
              <% end %>
            </td>
         <% end %>",
  disabled: false)

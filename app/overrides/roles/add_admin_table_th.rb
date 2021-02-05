Deface::Override.new(
  virtual_path: "admin/projects",
  name: "roles_to_table_headers",
  replace: "erb[loud]:contains('l(:field_is_public)')",
  text: "<%=l(:field_is_public)%>
         <% Role.where(show_in_admin_projects: true).each do |role| %>
            <th><%= role.name %></th>
         <% end %>",
  disabled: false)

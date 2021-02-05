Deface::Override.new(
  virtual_path: "roles/_form",
  name: "roles_listing_check_box",
  insert_after: "erb[loud]:contains('f.check_box :assignable')",
  text: "<p><%= f.check_box :show_in_admin_projects %></p>",
  disabled: false)

Redmine::Plugin.register :project_roles_listing do
  name 'Project roles listing plugin'
  author 'Everlabs'
  description 'This is a plugin for Redmine 2.x.x - 5.x.x'
  version '0.0.2'
  url 'http://everlabs.com'
  author_url 'http://everlabs.com'
end

require_relative './lib/patches/add_safety_attributes_patch.rb'

Rails.application.paths["app/overrides"] ||= []
Rails.application.paths["app/overrides"] << File.expand_path("../app/overrides", __FILE__)

Role.safe_attributes 'show_in_admin_projects'

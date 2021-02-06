# Project Roles Listing

Project Roles Listing is a [Redmine](https://www.redmine.org/projects/redmine) plugin that allows to select roles to be listed in admin/projects table.
![](https://i.ibb.co/mTDtS6Y/2021-02-05-16-23-29.png)
Table columns list out users with chosen role in each project and you can go to user profile by clicking its name.
![](https://i.ibb.co/qk5jFm9/2021-02-05-16-21-23.png)

## Installation
1. Copy your plugin directory into #{RAILS_ROOT}/plugins. If you are downloading the plugin directly from GitHub, you can do so by changing into your plugin directory and issuing a command like:
    ```bash
    $ git clone git clone git://github.com/everlabs/project-roles-listing.git
    ```
2. If the plugin requires a migration, run the following command in #{RAILS_ROOT} to upgrade your database (make a db backup before).
    ```bash
    $ bundle exec rake redmine:plugins:migrate RAILS_ENV=production
    ```
3. Run bundle command to install plugin deface gem
    ```bash
    $ bundle install
    ```
4. Run command to precompile plugin owerrides for views:
    ```bash
    $ rake deface:precompile
    ```
   if owerrides precompiled twice use:
    ```bash
    $ rake deface:clean                                   # Removes all precompiled override templates
    ```
5. Restart Redmine

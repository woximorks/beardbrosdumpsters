# README

1. Initial Heroku / Git repository setup
    - Following the basic Heroku documentation as outlined here for step 1 - https://devcenter.heroku.com/articles/getting-started-with-rails7#create-a-new-or-upgrade-an-existing-rails-app
    - ran command: rails new beardbrosdumpsters --database=postgresql
    - ran command: cd beardbrosdumpsters
    - ran command: bundle lock --add-platform x86_64-linux --add-platform ruby   
    - ran command: bin/rails db:create
    - Verified postgres gem in gemfile is present, and only related db gem: gem "pg", "~> 1.1"
    - verify ruby "3.2.2" (ruby version) present in gemfile
    - bundle install
    - verify database.yml file contains reference to postgresql
    - Create "Procfile"
        - Added info related to boot process for server
    - ran command: git init

2. Initial framework 
    - rails g scaffold PricingCard pricing_card_title pricing_card_description:text pricing_card_image_url pricing_card_total_cost:integer
    - rails g scaffold AboutCard about_card_title about_card_description:text about_card_image_url 
    - rails g scaffold Article article_title article_body:text article_description article_image_url
    - rails g scaffold SiteVar site_var_heading1 site_var_heading2 site_var_heading3 site_var_heading4 site_var_heading5 site_var_disclaimer1
    - https://stackoverflow.com/questions/44407614/image-does-not-display-on-heroku

3. Basic database commands to connected
    - Open PSQL
        - psql -h localhost -d postgres
    - Show connection info necessary to connect to server
        - \conninfo
    - Destroy entire database (use this one if you want to give yourself a headache) -
        - DROP DATABASE "databasename";

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
    - ran commands (separated by |): git init | git add . | git commit -m "init"
        - To initialize, stage, and commit all added files to be pushed to repository

2. Initial framework 
    - ran command: rails g scaffold PricingCard pricing_card_title pricing_card_description:text pricing_card_image_url pricing_card_total_cost:integer
    - ran command: rails g scaffold AboutCard about_card_title about_card_description:text about_card_image_url 
    - rand command: rails g scaffold Article article_title article_body:text article_description article_image_url
    - ran command: rails g scaffold SiteVar site_var_heading1 site_var_heading2 site_var_heading3 site_var_heading4 site_var_heading5 site_var_disclaimer1
    - ran command: rails g controller Pages home pricing events schedule
    - Set routes accordingly
    - Displaying basic content on the homepage through the use of shared views

    - https://stackoverflow.com/questions/44407614/image-does-not-display-on-heroku

3. Basic database info and commands to get connected

    - Open PSQL
        - psql -h localhost -d postgres
    - Show connection info necessary to connect to server
        - \conninfo
    - Backup database to sql file
        - pg_dump -U username -d database_name -f database_name_backup.sql --create
            - This creates a backup of an existing database_name
        - psql -d beardbrosdumpsters_development -f path/to/where/it/lives/beardbrosdumpsters_development_backup.sql
            - Create database populated with backup file
        - Added backup folder and containing files (*) to gitignore file, so that these will not be pushed to the repository
            - Will need to back these files up elsewhere
        - Some notes about running pg_dump - I did upgrade to postgresql@15 with brew to run this. It broke a bunch of stuff but running gem install pg fixed it (https://gorails.com/forum/rails-7-and-postgres-15)
    - Destroy entire database (use this one if you want to give yourself a headache) -
        - DROP DATABASE "databasename";
    - Resources / Related Articles
        - https://www.postgresql.org/docs/8.1/backup.html
        - https://www.dbvis.com/thetable/a-complete-guide-to-pg-dump-with-examples-tips-and-tricks/
        - https://devcenter.heroku.com/articles/heroku-postgres-import-export
        - https://devcenter.heroku.com/articles/managing-heroku-postgres-using-cli
        - https://stackoverflow.com/questions/24930923/postgresql-where-does-the-output-of-pg-dump-go
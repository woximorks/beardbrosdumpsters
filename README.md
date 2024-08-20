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

4. Front end update, including Bootstrap implementation, simple calendar Gem added
    - 4.1 Adding the necessary Gems
        - gem 'bootstrap', '~> 5.3.3'
        - gem 'dartsass-sprockets'
        - gem "simple_calendar"
        - Ran command: bundle install
    - 4.2 Make the css file a sass file
        - Imported appropriate libraries
            - @import "bootstrap";
            - @import "simple_calendar";
        - Adding some basic styling throughout utilizing flex concepts
    - 4.3 Added simple calendar that needs to be on it's own page for now
        - Every time I click on any of the links to change the dates displayed, it auto-scrolls to the very top of the page
        - Updated beginning of week globally to Sunday for this calendar to display appropriately
    - 4.4 Other mentions
        - Seed file contains the necessary info to populate this site with some filler for now
        - Updated image type to PNG so that they display without having to make any other adjustments to rails settings
        - Created development_2_backup.sql
    - Resources / Related Articles
        - https://github.com/twbs/bootstrap-rubygem 
        - https://github.com/excid3/simple_calendar

5. Admin section, accessible using Devise Gem. SQL updates to production
    - 5.1 - Adding Devise
        - ran command: bundle add devise
        - ran command: rails g devise:install
            - Added line to development.rb related to emails devise will send
        - rails g devise User
        - rails db:migrate
        - Removed registerable from the User model
            - New accounts cannot be created
        - Added authentication requirements to articles controller
        - Created navuser shared view
    - 5.2 - Updates to articles and how they display
        - Update statements made to Heroku production server so that the correct images will associate on the articles
        - Added 4 unique blog images that correspond to each article id
        - Other view updates to get rid of bloat
    
6. Addressing a bug
    - 6.1 - Alerts bug due to multiple tags added
        - The alerts p tag added to the application.html.erb file broke the front end due to that tag also being added within some other views directly. Removed every instance I could find for now
    - 6.2 - Authentication where necessary

7. Updates to pricing
    - 7.1 Updated pricing as follows
        - "Weekend" (3 days) $450
        - 1 week (7 days) $600
        - 2 weeks (14 days) $1100
        - These all include 1 ton of debris
        - $125 / ton additional charge
        - Pricing may vary depending on location etc
    - 7.2 Included site_var_disclaimer1 within _pricing view
    - 7.3 Ran necessary SQL to update these prices and related descriptions

8. Simple Calendar Upgrades
    - 8.1 Create RentedDumpster scaffold
        - rails g scaffold RentedDumpster rented_dumpster_name rented_dumpster_address start_time:datetime end_time:datetime
        - added to pages controller and schedule view to display some very basic information on the calendar related to the rented dumpsters
        - Logic to ensure user is signed in before creating a rented_dumpster

9. Front-end Updates using ChatGPT
 - 9.1 Nav logo updated
 - 9.2 News & Events header created
 - 9.3 Seed file updated to move some of the content around
 - 9.4 Home view updated to remove unnecessary bloat
 - 9.5 Simple flex CSS added

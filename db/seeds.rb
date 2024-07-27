# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

AboutCard.create!([{
    about_card_title: "Dumpster Rentals | Junk Removal",
    about_card_description: "Fast and affordable dumpster delivery options, servicing the greater Pennsylvania area",
    about_card_image_url: "about1"
},
{
    about_card_title: "You Call, We Haul",
    about_card_description: "Contact us today to schedule your next delivery. Need a hand with the heavy lifting? Bro & a Bin service has you covered",
    about_card_image_url: "about2",
},
{
    about_card_title: "Putting Your Junk in Our Trunk Since 2023",
    about_card_description: "Some other words to fill in a paragraph. I need more content. lorom imsup dollars.",
    about_card_image_url: "about3",
}
=begin
{
    about_card_title: "",
    about_card_description: "",
    about_card_image_url: "",
}
=end
])

Article.create!([{
    article_title: "Blog Basics",
    article_description: "This is a short description, 2-3 sentences with some basic information about the article in question. Sometimes it might make sense to just use the first 2-3 sentences of the article if you aren't feeling creative",
    article_body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    article_image_url: "blog1"
},
{
    article_title: "Blog Basics",
    article_description: "This is a short description, 2-3 sentences with some basic information about the article in question. Sometimes it might make sense to just use the first 2-3 sentences of the article if you aren't feeling creative",
    article_body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    article_image_url: "blog1"
},
{
    article_title: "Blog Basics",
    article_description: "This is a short description, 2-3 sentences with some basic information about the article in question. Sometimes it might make sense to just use the first 2-3 sentences of the article if you aren't feeling creative",
    article_body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    article_image_url: "blog1"
},
{
    article_title: "Blog Basics",
    article_description: "This is a short description, 2-3 sentences with some basic information about the article in question. Sometimes it might make sense to just use the first 2-3 sentences of the article if you aren't feeling creative",
    article_body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    article_image_url: "blog1"
}
=begin
{
    article_title: "",
    article_description: "",
    article_body: "",
    article_image_url: "",
}
=end
])

=begin
.create!([{
    contact_email: "beardbrosdumpsters@gmail.com",
    contact_phone: "7179065131",
    contact_instagram: ""
}
=end

SiteVar.create!([{
    site_var_heading1: "Beard Bros Dumpsters",
    site_var_heading2: "Pricing",
    site_var_heading3: "Schedule",
    site_var_heading4: "News & Events",
    site_var_disclaimer1: "*Additional junk fee prorated at - $150 / ton, advertised price does not include any applicable taxes or other fees related to waste disposal, and is subject to change at any time without notice.",
}
=begin
{
    site_var_heading1: "Beard Bros Dumpsters"
    site_var_heading2: "Pricing"
    site_var_heading3: "Schedule"
    site_var_heading4: "News & Events"
}
=end
])

PricingCard.create!([{
    pricing_card_title: "3 Day",
    pricing_card_description: "A 3 day (72hr) rental, including up to 2,000lbs of junk",
    pricing_card_image_url: "pricing1",
    pricing_card_total_cost: 450,
},
{
    pricing_card_title: "Week Long",
    pricing_card_description: "A 1 week (7 day) rental, including up to 4,000lbs of junk",
    pricing_card_image_url: "pricing1",
    pricing_card_total_cost: 800
},
{
    pricing_card_title: "Two Week",
    pricing_card_description: "A 2 week (14 day) rental, including up to 6,000lbs of junk",
    pricing_card_image_url: "pricing1",
    pricing_card_total_cost: 1500
},
{
    pricing_card_title: "Bro and a Bin",
    pricing_card_description: "Short term (8hr) rental, including a helper (beard not necessicarily included)",
    pricing_card_image_url: "pricing1",
    pricing_card_total_cost: 600
}

=begin
{
    pricing_card_title: "",
    pricing_card_description: "",
    pricing_card_image_url: "",
    pricing_card_total_cost: ,
}
=end
])

=begin
user = User.where(email: "test@test.com").first_or_initialize
user.update!(
    password: "password",
    password_confirmation: "password"
)
=end


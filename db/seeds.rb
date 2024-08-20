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
    about_card_title: "Dumpster Rentals with Delivery Service",
    about_card_description: "Fast and affordable dumpster delivery options, servicing the greater Pennsylvania area. We drop it off, you fill it up with junk, we pick it up. Pretty easy!",
    about_card_image_url: "about1"
},
{
    about_card_title: "Putting Your Junk in Our Trunk Since 2023",
    about_card_description: "If the junk is there, we can make it disappear. Give us a shout and throw it out today!",
    about_card_image_url: "about2",
},
{
    about_card_title: "You Call, We Haul",
    about_card_description: "Contact us today to schedule your next delivery. Head on over to the pricing section to see a breakdown of our associated costs! Our schedule page shows our general dumpster availability.",
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
    article_title: "beardbrosdumpsters.com - our new website!",
    article_description: " Thanks to our friends over at getawd.com, this site is now ready to go!",
    article_body: "Here at Beard Bros Dumpsters, we offer fast and affordable dumpster delivery options in the greater Pennsylvania area. If the junk is there, we would be happy to make it disappear! The pricing page contains a breakdown of our transparent and affordable pricing options. Ready to dump some junk? Give us a call or send us an email now, head on over to the schedule page where you can see all of our contact options!",
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


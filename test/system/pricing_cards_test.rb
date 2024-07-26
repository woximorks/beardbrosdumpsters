require "application_system_test_case"

class PricingCardsTest < ApplicationSystemTestCase
  setup do
    @pricing_card = pricing_cards(:one)
  end

  test "visiting the index" do
    visit pricing_cards_url
    assert_selector "h1", text: "Pricing cards"
  end

  test "should create pricing card" do
    visit pricing_cards_url
    click_on "New pricing card"

    fill_in "Pricing card description", with: @pricing_card.pricing_card_description
    fill_in "Pricing card image url", with: @pricing_card.pricing_card_image_url
    fill_in "Pricing card title", with: @pricing_card.pricing_card_title
    fill_in "Pricing card total cost", with: @pricing_card.pricing_card_total_cost
    click_on "Create Pricing card"

    assert_text "Pricing card was successfully created"
    click_on "Back"
  end

  test "should update Pricing card" do
    visit pricing_card_url(@pricing_card)
    click_on "Edit this pricing card", match: :first

    fill_in "Pricing card description", with: @pricing_card.pricing_card_description
    fill_in "Pricing card image url", with: @pricing_card.pricing_card_image_url
    fill_in "Pricing card title", with: @pricing_card.pricing_card_title
    fill_in "Pricing card total cost", with: @pricing_card.pricing_card_total_cost
    click_on "Update Pricing card"

    assert_text "Pricing card was successfully updated"
    click_on "Back"
  end

  test "should destroy Pricing card" do
    visit pricing_card_url(@pricing_card)
    click_on "Destroy this pricing card", match: :first

    assert_text "Pricing card was successfully destroyed"
  end
end

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

    fill_in "Description", with: @pricing_card.description
    fill_in "Image", with: @pricing_card.image
    fill_in "Title", with: @pricing_card.title
    click_on "Create Pricing card"

    assert_text "Pricing card was successfully created"
    click_on "Back"
  end

  test "should update Pricing card" do
    visit pricing_card_url(@pricing_card)
    click_on "Edit this pricing card", match: :first

    fill_in "Description", with: @pricing_card.description
    fill_in "Image", with: @pricing_card.image
    fill_in "Title", with: @pricing_card.title
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

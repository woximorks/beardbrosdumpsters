require "application_system_test_case"

class LandingCardsTest < ApplicationSystemTestCase
  setup do
    @landing_card = landing_cards(:one)
  end

  test "visiting the index" do
    visit landing_cards_url
    assert_selector "h1", text: "Landing cards"
  end

  test "should create landing card" do
    visit landing_cards_url
    click_on "New landing card"

    fill_in "Description", with: @landing_card.description
    fill_in "Image", with: @landing_card.image
    fill_in "Title", with: @landing_card.title
    click_on "Create Landing card"

    assert_text "Landing card was successfully created"
    click_on "Back"
  end

  test "should update Landing card" do
    visit landing_card_url(@landing_card)
    click_on "Edit this landing card", match: :first

    fill_in "Description", with: @landing_card.description
    fill_in "Image", with: @landing_card.image
    fill_in "Title", with: @landing_card.title
    click_on "Update Landing card"

    assert_text "Landing card was successfully updated"
    click_on "Back"
  end

  test "should destroy Landing card" do
    visit landing_card_url(@landing_card)
    click_on "Destroy this landing card", match: :first

    assert_text "Landing card was successfully destroyed"
  end
end

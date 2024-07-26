require "application_system_test_case"

class AboutCardsTest < ApplicationSystemTestCase
  setup do
    @about_card = about_cards(:one)
  end

  test "visiting the index" do
    visit about_cards_url
    assert_selector "h1", text: "About cards"
  end

  test "should create about card" do
    visit about_cards_url
    click_on "New about card"

    fill_in "About card description", with: @about_card.about_card_description
    fill_in "About card image url", with: @about_card.about_card_image_url
    fill_in "About card title", with: @about_card.about_card_title
    click_on "Create About card"

    assert_text "About card was successfully created"
    click_on "Back"
  end

  test "should update About card" do
    visit about_card_url(@about_card)
    click_on "Edit this about card", match: :first

    fill_in "About card description", with: @about_card.about_card_description
    fill_in "About card image url", with: @about_card.about_card_image_url
    fill_in "About card title", with: @about_card.about_card_title
    click_on "Update About card"

    assert_text "About card was successfully updated"
    click_on "Back"
  end

  test "should destroy About card" do
    visit about_card_url(@about_card)
    click_on "Destroy this about card", match: :first

    assert_text "About card was successfully destroyed"
  end
end

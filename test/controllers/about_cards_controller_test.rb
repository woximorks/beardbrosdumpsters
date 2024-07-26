require "test_helper"

class AboutCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @about_card = about_cards(:one)
  end

  test "should get index" do
    get about_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_about_card_url
    assert_response :success
  end

  test "should create about_card" do
    assert_difference("AboutCard.count") do
      post about_cards_url, params: { about_card: { about_card_description: @about_card.about_card_description, about_card_image_url: @about_card.about_card_image_url, about_card_title: @about_card.about_card_title } }
    end

    assert_redirected_to about_card_url(AboutCard.last)
  end

  test "should show about_card" do
    get about_card_url(@about_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_about_card_url(@about_card)
    assert_response :success
  end

  test "should update about_card" do
    patch about_card_url(@about_card), params: { about_card: { about_card_description: @about_card.about_card_description, about_card_image_url: @about_card.about_card_image_url, about_card_title: @about_card.about_card_title } }
    assert_redirected_to about_card_url(@about_card)
  end

  test "should destroy about_card" do
    assert_difference("AboutCard.count", -1) do
      delete about_card_url(@about_card)
    end

    assert_redirected_to about_cards_url
  end
end

require "test_helper"

class LandingCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @landing_card = landing_cards(:one)
  end

  test "should get index" do
    get landing_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_landing_card_url
    assert_response :success
  end

  test "should create landing_card" do
    assert_difference("LandingCard.count") do
      post landing_cards_url, params: { landing_card: { description: @landing_card.description, image: @landing_card.image, title: @landing_card.title } }
    end

    assert_redirected_to landing_card_url(LandingCard.last)
  end

  test "should show landing_card" do
    get landing_card_url(@landing_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_landing_card_url(@landing_card)
    assert_response :success
  end

  test "should update landing_card" do
    patch landing_card_url(@landing_card), params: { landing_card: { description: @landing_card.description, image: @landing_card.image, title: @landing_card.title } }
    assert_redirected_to landing_card_url(@landing_card)
  end

  test "should destroy landing_card" do
    assert_difference("LandingCard.count", -1) do
      delete landing_card_url(@landing_card)
    end

    assert_redirected_to landing_cards_url
  end
end

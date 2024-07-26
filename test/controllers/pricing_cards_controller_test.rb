require "test_helper"

class PricingCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pricing_card = pricing_cards(:one)
  end

  test "should get index" do
    get pricing_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_pricing_card_url
    assert_response :success
  end

  test "should create pricing_card" do
    assert_difference("PricingCard.count") do
      post pricing_cards_url, params: { pricing_card: { pricing_card_description: @pricing_card.pricing_card_description, pricing_card_image_url: @pricing_card.pricing_card_image_url, pricing_card_title: @pricing_card.pricing_card_title, pricing_card_total_cost: @pricing_card.pricing_card_total_cost } }
    end

    assert_redirected_to pricing_card_url(PricingCard.last)
  end

  test "should show pricing_card" do
    get pricing_card_url(@pricing_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_pricing_card_url(@pricing_card)
    assert_response :success
  end

  test "should update pricing_card" do
    patch pricing_card_url(@pricing_card), params: { pricing_card: { pricing_card_description: @pricing_card.pricing_card_description, pricing_card_image_url: @pricing_card.pricing_card_image_url, pricing_card_title: @pricing_card.pricing_card_title, pricing_card_total_cost: @pricing_card.pricing_card_total_cost } }
    assert_redirected_to pricing_card_url(@pricing_card)
  end

  test "should destroy pricing_card" do
    assert_difference("PricingCard.count", -1) do
      delete pricing_card_url(@pricing_card)
    end

    assert_redirected_to pricing_cards_url
  end
end

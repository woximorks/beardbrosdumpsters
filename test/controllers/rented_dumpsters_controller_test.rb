require "test_helper"

class RentedDumpstersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rented_dumpster = rented_dumpsters(:one)
  end

  test "should get index" do
    get rented_dumpsters_url
    assert_response :success
  end

  test "should get new" do
    get new_rented_dumpster_url
    assert_response :success
  end

  test "should create rented_dumpster" do
    assert_difference("RentedDumpster.count") do
      post rented_dumpsters_url, params: { rented_dumpster: { end_time: @rented_dumpster.end_time, rented_dumpster_address: @rented_dumpster.rented_dumpster_address, rented_dumpster_name: @rented_dumpster.rented_dumpster_name, start_time: @rented_dumpster.start_time } }
    end

    assert_redirected_to rented_dumpster_url(RentedDumpster.last)
  end

  test "should show rented_dumpster" do
    get rented_dumpster_url(@rented_dumpster)
    assert_response :success
  end

  test "should get edit" do
    get edit_rented_dumpster_url(@rented_dumpster)
    assert_response :success
  end

  test "should update rented_dumpster" do
    patch rented_dumpster_url(@rented_dumpster), params: { rented_dumpster: { end_time: @rented_dumpster.end_time, rented_dumpster_address: @rented_dumpster.rented_dumpster_address, rented_dumpster_name: @rented_dumpster.rented_dumpster_name, start_time: @rented_dumpster.start_time } }
    assert_redirected_to rented_dumpster_url(@rented_dumpster)
  end

  test "should destroy rented_dumpster" do
    assert_difference("RentedDumpster.count", -1) do
      delete rented_dumpster_url(@rented_dumpster)
    end

    assert_redirected_to rented_dumpsters_url
  end
end

require "application_system_test_case"

class RentedDumpstersTest < ApplicationSystemTestCase
  setup do
    @rented_dumpster = rented_dumpsters(:one)
  end

  test "visiting the index" do
    visit rented_dumpsters_url
    assert_selector "h1", text: "Rented dumpsters"
  end

  test "should create rented dumpster" do
    visit rented_dumpsters_url
    click_on "New rented dumpster"

    fill_in "End time", with: @rented_dumpster.end_time
    fill_in "Rented dumpster address", with: @rented_dumpster.rented_dumpster_address
    fill_in "Rented dumpster name", with: @rented_dumpster.rented_dumpster_name
    fill_in "Start time", with: @rented_dumpster.start_time
    click_on "Create Rented dumpster"

    assert_text "Rented dumpster was successfully created"
    click_on "Back"
  end

  test "should update Rented dumpster" do
    visit rented_dumpster_url(@rented_dumpster)
    click_on "Edit this rented dumpster", match: :first

    fill_in "End time", with: @rented_dumpster.end_time
    fill_in "Rented dumpster address", with: @rented_dumpster.rented_dumpster_address
    fill_in "Rented dumpster name", with: @rented_dumpster.rented_dumpster_name
    fill_in "Start time", with: @rented_dumpster.start_time
    click_on "Update Rented dumpster"

    assert_text "Rented dumpster was successfully updated"
    click_on "Back"
  end

  test "should destroy Rented dumpster" do
    visit rented_dumpster_url(@rented_dumpster)
    click_on "Destroy this rented dumpster", match: :first

    assert_text "Rented dumpster was successfully destroyed"
  end
end

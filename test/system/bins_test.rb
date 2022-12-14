require "application_system_test_case"

class BinsTest < ApplicationSystemTestCase
  setup do
    @bin = bins(:one)
  end

  test "visiting the index" do
    visit bins_url
    assert_selector "h1", text: "Bins"
  end

  test "should create bin" do
    visit bins_url
    click_on "New bin"

    check "Emptied" if @bin.emptied
    fill_in "Location", with: @bin.location
    fill_in "Waste level", with: @bin.waste_level
    click_on "Create Bin"

    assert_text "Bin was successfully created"
    click_on "Back"
  end

  test "should update Bin" do
    visit bin_url(@bin)
    click_on "Edit this bin", match: :first

    check "Emptied" if @bin.emptied
    fill_in "Location", with: @bin.location
    fill_in "Waste level", with: @bin.waste_level
    click_on "Update Bin"

    assert_text "Bin was successfully updated"
    click_on "Back"
  end

  test "should destroy Bin" do
    visit bin_url(@bin)
    click_on "Destroy this bin", match: :first

    assert_text "Bin was successfully destroyed"
  end
end

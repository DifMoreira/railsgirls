require "application_system_test_case"

class MyfirstappsTest < ApplicationSystemTestCase
  setup do
    @myfirstapp = myfirstapps(:one)
  end

  test "visiting the index" do
    visit myfirstapps_url
    assert_selector "h1", text: "Myfirstapps"
  end

  test "creating a Myfirstapp" do
    visit myfirstapps_url
    click_on "New Myfirstapp"

    click_on "Create Myfirstapp"

    assert_text "Myfirstapp was successfully created"
    click_on "Back"
  end

  test "updating a Myfirstapp" do
    visit myfirstapps_url
    click_on "Edit", match: :first

    click_on "Update Myfirstapp"

    assert_text "Myfirstapp was successfully updated"
    click_on "Back"
  end

  test "destroying a Myfirstapp" do
    visit myfirstapps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Myfirstapp was successfully destroyed"
  end
end

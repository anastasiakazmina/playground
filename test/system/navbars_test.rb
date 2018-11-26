require "application_system_test_case"

class NavbarsTest < ApplicationSystemTestCase
  setup do
    @navbar = navbars(:one)
  end

  test "visiting the index" do
    visit navbars_url
    assert_selector "h1", text: "Navbars"
  end

  test "creating a Navbar" do
    visit navbars_url
    click_on "New Navbar"

    fill_in "Body", with: @navbar.body
    fill_in "Title", with: @navbar.title
    click_on "Create Navbar"

    assert_text "Navbar was successfully created"
    click_on "Back"
  end

  test "updating a Navbar" do
    visit navbars_url
    click_on "Edit", match: :first

    fill_in "Body", with: @navbar.body
    fill_in "Title", with: @navbar.title
    click_on "Update Navbar"

    assert_text "Navbar was successfully updated"
    click_on "Back"
  end

  test "destroying a Navbar" do
    visit navbars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Navbar was successfully destroyed"
  end
end

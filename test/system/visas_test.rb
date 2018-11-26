require "application_system_test_case"

class VisasTest < ApplicationSystemTestCase
  setup do
    @visa = visas(:one)
  end

  test "visiting the index" do
    visit visas_url
    assert_selector "h1", text: "Visas"
  end

  test "creating a Visa" do
    visit visas_url
    click_on "New Visa"

    fill_in "Body", with: @visa.body
    fill_in "Title", with: @visa.title
    click_on "Create Visa"

    assert_text "Visa was successfully created"
    click_on "Back"
  end

  test "updating a Visa" do
    visit visas_url
    click_on "Edit", match: :first

    fill_in "Body", with: @visa.body
    fill_in "Title", with: @visa.title
    click_on "Update Visa"

    assert_text "Visa was successfully updated"
    click_on "Back"
  end

  test "destroying a Visa" do
    visit visas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visa was successfully destroyed"
  end
end

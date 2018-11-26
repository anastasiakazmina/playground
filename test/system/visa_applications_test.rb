require "application_system_test_case"

class VisaApplicationsTest < ApplicationSystemTestCase
  setup do
    @visa_application = visa_applications(:one)
  end

  test "visiting the index" do
    visit visa_applications_url
    assert_selector "h1", text: "Visa Applications"
  end

  test "creating a Visa application" do
    visit visa_applications_url
    click_on "New Visa Application"

    fill_in "Body", with: @visa_application.body
    fill_in "Title", with: @visa_application.title
    click_on "Create Visa application"

    assert_text "Visa application was successfully created"
    click_on "Back"
  end

  test "updating a Visa application" do
    visit visa_applications_url
    click_on "Edit", match: :first

    fill_in "Body", with: @visa_application.body
    fill_in "Title", with: @visa_application.title
    click_on "Update Visa application"

    assert_text "Visa application was successfully updated"
    click_on "Back"
  end

  test "destroying a Visa application" do
    visit visa_applications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visa application was successfully destroyed"
  end
end

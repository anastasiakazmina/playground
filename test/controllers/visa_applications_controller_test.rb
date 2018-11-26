require 'test_helper'

class VisaApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visa_application = visa_applications(:one)
  end

  test "should get index" do
    get visa_applications_url
    assert_response :success
  end

  test "should get new" do
    get new_visa_application_url
    assert_response :success
  end

  test "should create visa_application" do
    assert_difference('VisaApplication.count') do
      post visa_applications_url, params: { visa_application: { body: @visa_application.body, title: @visa_application.title } }
    end

    assert_redirected_to visa_application_url(VisaApplication.last)
  end

  test "should show visa_application" do
    get visa_application_url(@visa_application)
    assert_response :success
  end

  test "should get edit" do
    get edit_visa_application_url(@visa_application)
    assert_response :success
  end

  test "should update visa_application" do
    patch visa_application_url(@visa_application), params: { visa_application: { body: @visa_application.body, title: @visa_application.title } }
    assert_redirected_to visa_application_url(@visa_application)
  end

  test "should destroy visa_application" do
    assert_difference('VisaApplication.count', -1) do
      delete visa_application_url(@visa_application)
    end

    assert_redirected_to visa_applications_url
  end
end

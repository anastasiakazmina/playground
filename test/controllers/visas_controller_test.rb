require 'test_helper'

class VisasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visa = visas(:one)
  end

  test "should get index" do
    get visas_url
    assert_response :success
  end

  test "should get new" do
    get new_visa_url
    assert_response :success
  end

  test "should create visa" do
    assert_difference('Visa.count') do
      post visas_url, params: { visa: { body: @visa.body, title: @visa.title } }
    end

    assert_redirected_to visa_url(Visa.last)
  end

  test "should show visa" do
    get visa_url(@visa)
    assert_response :success
  end

  test "should get edit" do
    get edit_visa_url(@visa)
    assert_response :success
  end

  test "should update visa" do
    patch visa_url(@visa), params: { visa: { body: @visa.body, title: @visa.title } }
    assert_redirected_to visa_url(@visa)
  end

  test "should destroy visa" do
    assert_difference('Visa.count', -1) do
      delete visa_url(@visa)
    end

    assert_redirected_to visas_url
  end
end

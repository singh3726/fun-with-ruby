require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get by_name" do
    get search_by_name_url
    assert_response :success
  end

  test "should get by_phno" do
    get search_by_phno_url
    assert_response :success
  end

  test "should get by_address" do
    get search_by_address_url
    assert_response :success
  end

  test "should get by_postal_code" do
    get search_by_postal_code_url
    assert_response :success
  end

  test "should get by_poll" do
    get search_by_poll_url
    assert_response :success
  end

  test "should get by_caption" do
    get search_by_caption_url
    assert_response :success
  end

end

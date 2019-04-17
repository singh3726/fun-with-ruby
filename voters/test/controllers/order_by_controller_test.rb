require 'test_helper'

class OrderByControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get order_by_index_url
    assert_response :success
  end

  test "should get phnno" do
    get order_by_phnno_url
    assert_response :success
  end

  test "should get postal_code" do
    get order_by_postal_code_url
    assert_response :success
  end

  test "should get address" do
    get order_by_address_url
    assert_response :success
  end

  test "should get poll" do
    get order_by_poll_url
    assert_response :success
  end

  test "should get captionName" do
    get order_by_captionName_url
    assert_response :success
  end

end

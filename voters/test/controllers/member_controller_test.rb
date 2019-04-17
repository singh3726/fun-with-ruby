require 'test_helper'

class MemberControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get member_index_url
    assert_response :success
  end

  test "should get edit" do
    get member_edit_url
    assert_response :success
  end

  test "should get read" do
    get member_read_url
    assert_response :success
  end

end

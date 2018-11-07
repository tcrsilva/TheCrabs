require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get useropc" do
    get login_useropc_url
    assert_response :success
  end

end

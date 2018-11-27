require 'test_helper'

class ProfilesBackoffice::WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profiles_backoffice_welcome_index_url
    assert_response :success
  end

end

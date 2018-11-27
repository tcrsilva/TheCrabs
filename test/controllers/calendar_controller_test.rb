require 'test_helper'

class CalendarControllerTest < ActionDispatch::IntegrationTest
  test "should get schedule" do
    get calendar_schedule_url
    assert_response :success
  end

end

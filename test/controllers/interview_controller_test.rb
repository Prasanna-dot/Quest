require "test_helper"

class InterviewControllerTest < ActionDispatch::IntegrationTest
  test "should get html" do
    get interview_html_url
    assert_response :success
  end
end

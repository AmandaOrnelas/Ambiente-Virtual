require 'test_helper'

class ChapterTestTimeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get chapter_test_time_new_url
    assert_response :success
  end

end

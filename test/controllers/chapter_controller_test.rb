require 'test_helper'

class ChapterControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get chapter_new_url
    assert_response :success
  end

end

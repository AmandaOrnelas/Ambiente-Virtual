require 'test_helper'

class UserMatterControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_matter_new_url
    assert_response :success
  end

end

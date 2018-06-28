require 'test_helper'

class MatterControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get matter_new_url
    assert_response :success
  end

end

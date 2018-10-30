require 'test_helper'

class OpcaosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get opcaos_index_url
    assert_response :success
  end

end

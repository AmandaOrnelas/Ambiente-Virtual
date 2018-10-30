require 'test_helper'

class ProvaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prova_index_url
    assert_response :success
  end

end

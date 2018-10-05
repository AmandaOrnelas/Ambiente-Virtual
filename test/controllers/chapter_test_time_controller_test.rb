require 'test_helper'

class TempoCapituloControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tempo_capitulo_new_url
    assert_response :success
  end

end

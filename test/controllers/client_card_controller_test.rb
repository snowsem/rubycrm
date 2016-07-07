require 'test_helper'

class ClientCardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get client_card_index_url
    assert_response :success
  end

end

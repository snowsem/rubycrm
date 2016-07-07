require 'test_helper'

class ContactCardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contact_card_index_url
    assert_response :success
  end

end

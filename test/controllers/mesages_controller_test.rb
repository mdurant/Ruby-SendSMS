require 'test_helper'

class MesagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mesages_new_url
    assert_response :success
  end

  test "should get create" do
    get mesages_create_url
    assert_response :success
  end

end

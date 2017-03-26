require 'test_helper'

class Admin::MainControllerTest < ActionDispatch::IntegrationTest
  test "should get admin index" do
    get admin_root_path
    assert_response :success
  end
end

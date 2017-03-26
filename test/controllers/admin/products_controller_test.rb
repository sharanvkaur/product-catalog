require 'test_helper'

class Admin::ProductsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @product = products(:one)
  end

  test "should get new" do
    get new_admin_product_path
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_product_path(@product)
    assert_response :success
  end

end

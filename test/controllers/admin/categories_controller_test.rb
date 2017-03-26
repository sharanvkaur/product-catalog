require 'test_helper'

class Admin::CategoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @category = categories(:one)
  end
  
  test "should get index" do
    get admin_categories_path
    assert_response :success
  end

  test "should get new" do
    get new_admin_category_path
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_category_path(@category)
    assert_response :success
  end
end

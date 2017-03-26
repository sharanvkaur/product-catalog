require 'test_helper'

class Admin::SubSubCategoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @category = categories(:one)
    @sub_category = sub_categories(:one)
    @sub_sub_category = sub_sub_categories(:one)
  end

  test "should get new" do
    get new_admin_category_sub_category_sub_sub_category_path(@category, @sub_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_category_sub_category_sub_sub_category_path(@category, @sub_category, @sub_sub_category)
    assert_response :success
  end

  test "should get show" do
    get admin_category_sub_category_sub_sub_category_path(@category, @sub_category, @sub_sub_category)
    assert_response :success
  end

end

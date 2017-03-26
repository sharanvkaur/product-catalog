require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @product = products(:one)
    @sub_sub_category = sub_categories(:one)
  end

  test "should get index" do
    get '/'
    assert_response :success
  end
end

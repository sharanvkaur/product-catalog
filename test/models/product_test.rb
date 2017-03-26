require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  def setup
    @product = Product.new(name: "test", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat. ")
  end

  test "should be valid" do
    assert_not @product.valid?
  end

  test "name should be present" do
    @product.name = "   "
    assert_not @product.valid?
  end

  test "description should be at least 140 characters" do
    @product.description = "a" * 139
    assert_not @product.valid?
  end
end

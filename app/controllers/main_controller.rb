class MainController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
    @sub_categories = SubCategory.all
    @sub_sub_categories = SubSubCategory.all
  end
end

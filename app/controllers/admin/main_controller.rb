class Admin::MainController < ApplicationController
  def index
    @products = Product.all.order('id ASC')
    @categories = Category.all
    @sub_categories = SubCategory.all
    @sub_sub_categories = SubSubCategory.all

  end
end

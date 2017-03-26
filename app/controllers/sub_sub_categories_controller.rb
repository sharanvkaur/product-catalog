class SubSubCategoriesController < ApplicationController
  def show
    @categories = Category.all
    @sub_categories = SubCategory.all
    @sub_sub_categories = SubSubCategory.all

    @category = Category.find(params[:category_id])
    @sub_category = SubCategory.find(params[:sub_category_id])

    @sub_sub_category = SubSubCategory.find(params[:id])

    @products = Product.where(sub_sub_category_id: @sub_sub_category)
  end
end

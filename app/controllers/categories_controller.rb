class CategoriesController < ApplicationController
  def show

    @categories = Category.all
    @sub_categories = SubCategory.all
    @sub_sub_categories = SubSubCategory.all


    @category = Category.find(params[:id])
    @sub_category = SubCategory.where(category_id: params[:id])
    @sub_sub_category = SubSubCategory.where(sub_category_id: @sub_category.ids)

    @products = Product.where(sub_sub_category_id: @sub_sub_category.ids)
  end
end

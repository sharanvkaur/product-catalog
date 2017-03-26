class ProductsController < ApplicationController
  def show
    @categories = Category.all
    @sub_categories = SubCategory.all
    @sub_sub_categories = SubSubCategory.all

    @product = Product.find(params[:id])

    @sub_sub_category = SubSubCategory.find_by(id: @product.sub_sub_category_id)

    @sub_category = SubCategory.find_by(id: @sub_sub_category.sub_category_id)

    @category = Category.find_by(id: @sub_category.category_id)

  end
end

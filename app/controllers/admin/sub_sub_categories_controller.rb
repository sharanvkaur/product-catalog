class Admin::SubSubCategoriesController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @sub_category = SubCategory.find(params[:sub_category_id])
    @sub_sub_category = SubSubCategory.new
  end

  def create
    @category = Category.find(params[:category_id])
    @sub_category = SubCategory.find(params[:sub_category_id])
    @sub_sub_category = SubSubCategory.new(sub_sub_category_params)

   if @sub_sub_category.save
     redirect_to admin_categories_path, notice: 'SubSubCategory was successfully created.'
   else
     render :new
   end
  end

  def edit
    @category = Category.find(params[:category_id])
    @sub_category = SubCategory.find(params[:sub_category_id])
    @sub_sub_category = SubSubCategory.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @sub_category = SubCategory.find(params[:sub_category_id])
    @sub_sub_category = SubSubCategory.find(params[:id])

    if @sub_sub_category.update(sub_sub_category_params)
      redirect_to admin_categories_path, notice: 'SubSubCategory was successfully updated.'
    else
      render :edit
    end
  end

  def show
    @category = Category.find(params[:category_id])
    @sub_category = SubCategory.find(params[:sub_category_id])
    @sub_sub_category = SubSubCategory.find(params[:id])

    @products = Product.where(sub_sub_category_id: @sub_sub_category.id)
  end

  def destroy
    @category = Category.find(params[:category_id])
    @sub_category = SubCategory.find(params[:sub_category_id])
    @sub_sub_category = SubSubCategory.find(params[:id])

    @sub_sub_category.destroy
    redirect_to admin_categories_path, notice: 'SubSubCategory was successfully deleted.'
  end

  private

  def sub_sub_category_params
    params.require(:sub_sub_category).permit(:name, :sub_category_id)
  end
end

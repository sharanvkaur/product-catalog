class Admin::SubCategoriesController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @sub_category = SubCategory.new
  end

  def create
    @category = Category.find(params[:category_id])
    @sub_category = SubCategory.new(sub_category_params)

   if @sub_category.save
     redirect_to admin_categories_path, notice: 'SubCategory was successfully created.'
   else
     render :new
   end
  end

  def edit
    @category = Category.find(params[:category_id])
    @sub_category = SubCategory.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @sub_category = SubCategory.find(params[:id])


    if @sub_category.update(sub_category_params)
      redirect_to admin_categories_path, notice: 'SubCategory was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @sub_category = SubCategory.find(params[:id])

    @sub_category.destroy
    redirect_to admin_categories_path, notice: 'SubCategory was successfully deleted.'
  end

  def show
    @category = Category.find(params[:category_id])
    @sub_category = SubCategory.find(params[:id])
    @sub_sub_category = SubSubCategory.where(sub_category_id: @sub_category.id)

    @products = Product.where(sub_sub_category_id: @sub_sub_category.ids)
  end

  private

  def sub_category_params
    params.require(:sub_category).permit(:name, :category_id)
  end
end

class Admin::CategoriesController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all.order('id ASC')
    @sub_categories = SubCategory.all
    @sub_sub_categories = SubSubCategory.all
  end

  def show
    @category = Category.find(params[:id])
    @sub_category = SubCategory.where(category_id: params[:id])
    @sub_sub_category = SubSubCategory.where(sub_category_id: @sub_category.ids)

    @products = Product.where(sub_sub_category_id: @sub_sub_category.ids)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

   if @category.save
     redirect_to admin_categories_path, notice: 'Category was successfully created.'
   else
     render :new
   end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      redirect_to admin_categories_path, notice: 'Category was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])

    @category.destroy
    redirect_to admin_categories_path, notice: 'Category was successfully deleted.'
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end

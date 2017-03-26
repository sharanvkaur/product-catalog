class Admin::ProductsController < ApplicationController
  def show
    @categories = Category.all
    @sub_categories = SubCategory.all
    @sub_sub_categories = SubSubCategory.all


    @product = Product.find(params[:id])

    @sub_sub_category = SubSubCategory.find_by(id: @product.sub_sub_category_id)

    @sub_category = SubCategory.find_by(id: @sub_sub_category.sub_category_id)

    @category = Category.find_by(id: @sub_category.category_id)
  end
  def new
    @product = Product.new
    @sub_categories = SubCategory.all
  end

  def create
    @product = Product.new(product_params)

   if @product.save
     redirect_to admin_product_path(@product), notice: 'Product was successfully created.'
   else
     render :new
   end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to admin_product_path(@product), notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy
    redirect_to admin_root_path, notice: 'Product was successfully deleted.'
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :sub_sub_category_id)
  end
end

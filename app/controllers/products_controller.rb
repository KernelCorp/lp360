class ProductsController < ApplicationController
  layout 'categories'

  def show
    @product = Product.find params[:id]
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :video)
  end

end

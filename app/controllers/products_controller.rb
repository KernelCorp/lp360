class ProductsController < ApplicationController
  layout 'categories'

  def show
    @product = Product.find params[:id]
    @products = Product.all(:order => 'product_id')
  end

end

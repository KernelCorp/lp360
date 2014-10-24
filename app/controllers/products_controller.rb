class ProductsController < ApplicationController
  layout 'categories'

  def show
    @product = Product.find params[:id]
  end

end

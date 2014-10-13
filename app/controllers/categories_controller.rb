class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    a = 1
  end

  def show
    @category = Category.find params[:id]
    a = 1
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

end

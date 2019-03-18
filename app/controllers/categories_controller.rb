class CategoriesController < ApplicationController
  
  def show
    @category = Category.find(params[:id]).microposts
    @microposts = @category.all
  end
end

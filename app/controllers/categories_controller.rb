class CategoriesController < ApplicationController
  
  def show
    @category = Category.find(params[:id]).microposts
  end
end

class CategoriesController < ApplicationController
  def index
    respond_with Category.all
  end
end

class SubcategoriesController < ApplicationController

  def index

  end

  def show
    @subcategory = Subcategory.find_by(id: params[:id])
  end
end

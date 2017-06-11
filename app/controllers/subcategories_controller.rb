class SubcategoriesController < ApplicationController

  def index

  end

  def show
    @user = current_user
    @subcategory = Subcategory.find_by(id: params[:id])
  end
end

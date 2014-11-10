class PagesController < ApplicationController

  def home
    @recipes = Recipe.all.sort
  end

  def search
    @search = params[:search]
    @recipes = Recipe.includes(:ingredients).references(:ingredients).where("ingredients.name ILIKE ?", "%#{@search}%")
    render :home
  end

end

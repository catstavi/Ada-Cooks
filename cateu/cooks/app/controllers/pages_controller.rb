class PagesController < ApplicationController

  def home
    @all_recipes = Recipe.all.sort
  end

end

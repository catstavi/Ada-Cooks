class RecipesController < ApplicationController

  def new
  end

  def create
    raise params.inspect

  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :user_id)
  end
end

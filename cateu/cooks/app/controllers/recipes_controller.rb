class RecipesController < ApplicationController

  def new

  end

  def create
    raise params.inspect
    MeasurementForm.new(params[:measurement])
    RecipeForm
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :user_id)
  end

end

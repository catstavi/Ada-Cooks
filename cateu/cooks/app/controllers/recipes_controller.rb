class RecipesController < ApplicationController

  def new
  end

  def create
    measurements = MeasurementForm.new(params[:measurement]).measurements
    @recipe = Recipe.new(recipe_params)
    measurements.each do |measure|
      @recipe.measurements << measure
    end
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :user_id)
  end

end

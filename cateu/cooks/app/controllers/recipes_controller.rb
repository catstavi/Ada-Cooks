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
      redirect_to root_path, notice: "Your recipe has been added! Thanks for contributing!"
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    unless @recipe
      redirect_to root_path, notice: "Recipe not found."
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.measurements.each do |measurement|
      measurement.destroy
    end
    @recipe.destroy
    redirect_to root_path, notice: "#{@recipe.name} has been deleted."
  end


  private

  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :user_id)
  end

end

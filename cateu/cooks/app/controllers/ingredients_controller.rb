class IngredientsController < ApplicationController

  def add_new
    @ingredients = IngredientForm.new(params[:ingredients]).ingr_objs
    @recipe = Recipe.new
    @ingredients.each do |ing|
      @recipe.measurements.new(ingredient: ing)
    end

    render 'recipes/new'
  end

  def create
    @recipe_form = RecipeForm.new(params[:recipe_form])

    if @recipe_form.submit
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end

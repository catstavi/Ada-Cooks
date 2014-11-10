class IngredientsController < ApplicationController

  def add_new
    @ingredients = IngredientForm.new(params[:ingredients]).ingr_objs
    render 'recipes/new'
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end

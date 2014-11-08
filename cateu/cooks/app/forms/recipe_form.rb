class RecipeForm

  def initialize(attributes)
    @attributes = attributes
  end

  def submit
    #create an instance of recipe class
    #and check ingredients, create & add as needed

    recipe = Recipe.new(@attributes)

  end


end

class IngredientForm

  attr_reader :ingr_objs

  def initialize(ingr_list)
    ingredient_names = parse_list(ingr_list)
    @ingr_objs = find_or_create(ingredient_names)
  end

  #how to make this thing catch errors in a way that will display on form?
  #need to have each create be an if check in the method that displays it..

  private

  def parse_list(list)
    ingr_names = list.split(', ')
    ingr_names.collect do |name|
      name.singularize
    end
  end

  def find_or_create(ingredient_names)
    ingredient_names.collect do |name|
      if Ingredient.find_by(name: name) #returns nil if not found
        Ingredient.find_by(name: name)
      else
        Ingredient.create(name: name) #need to check if error here
      end
    end
  end

end

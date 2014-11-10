require 'rails_helper'

describe "IngredientForm" do
  describe '#ingr_objs' do
    let(:string) {"meow, meow, woof, bark, yap, mew"}
    let(:ingform) {IngredientForm.new(string)}
    it 'returns an array of ingredient objects' do
      expect(ingform.ingr_objs[0]).to be_instance_of(Ingredient)
    end
    # testing things does not create them in the database, need to test a different way
    it 'does not create two ingredients with the same name, even when given duplicates' do
      IngredientForm.new(string)
      expect(Ingredient.where(name: "meow").count).to eq(1)
    end
  end
end

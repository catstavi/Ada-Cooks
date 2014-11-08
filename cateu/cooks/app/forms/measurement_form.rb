class MeasurementForm

  def initialize(attributes)
    @attributes = attributes
    submit
  end

  def submit
    @attributes.each do |key, value|
      Ingredient.find(key)
      IngredientMeasurement.create(amount: value[0], unit: value[1], ingredient_id: key)
    end
  end

  private

  # def measurement_params
  #   params.require(:measurement)
  # end

end

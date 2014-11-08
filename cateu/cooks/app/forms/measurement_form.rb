class MeasurementForm
  attr_reader :measurements

  def initialize(attributes)
    @measurements = submit(attributes)
  end

  def submit(attributes)
    attributes.collect do |key, value|
      Ingredient.find(key)
      Measurement.create(amount: value[0], unit: value[1], ingredient_id: key)
    end
  end

  private


end

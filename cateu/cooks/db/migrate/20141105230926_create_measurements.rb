class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.integer :amount
      t.string :unit
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end

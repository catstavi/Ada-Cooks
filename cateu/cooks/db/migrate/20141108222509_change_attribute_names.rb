class ChangeAttributeNames < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    remove_column :users, :name
    add_column :recipes, :instructions, :text
    remove_column :recipes, :description
  end
end

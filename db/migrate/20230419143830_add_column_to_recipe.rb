class AddColumnToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :status, :integer, default: 0
  end
end

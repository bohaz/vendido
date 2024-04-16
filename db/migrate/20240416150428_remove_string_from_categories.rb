class RemoveStringFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :string
  end
end

class AddRatingsToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :rating, :integer
  end
end

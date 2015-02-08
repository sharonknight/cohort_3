class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :ingredient_list
      t.string :measurements
      t.string :instructions
      t.string :cooking_time
      t.string :image
      t.string :serving_size
      t.string :calories
      t.string :gluten_free
      t.string :title
      t.string :contributor

      t.timestamps null: false
    end
  end
end

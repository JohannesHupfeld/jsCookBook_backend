class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.text :instructions
      t.string :image_url
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

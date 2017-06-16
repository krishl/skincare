class CreateProductingredients < ActiveRecord::Migration[5.0]
  def change
    create_table :productingredients do |t|
      t.integer :product_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end

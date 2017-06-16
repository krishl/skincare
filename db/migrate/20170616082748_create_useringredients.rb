class CreateUseringredients < ActiveRecord::Migration[5.0]
  def change
    create_table :useringredients do |t|
      t.integer :user_id
      t.integer :ingredient_id
      t.string :reaction, :default => "safe"
      t.string :user_notes

      t.timestamps
    end
  end
end

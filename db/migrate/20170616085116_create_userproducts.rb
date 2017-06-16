class CreateUserproducts < ActiveRecord::Migration[5.0]
  def change
    create_table :userproducts do |t|
      t.string :overall_reaction, :default => "safe"
      t.string :step
      t.date :opened_on
      t.date :expiry_date
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end

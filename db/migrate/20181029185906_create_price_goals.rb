class CreatePriceGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :price_goals do |t|
      t.integer :target_price, null: false
      t.text :crypto_name, null: false

      t.timestamps null: false

      t.belongs_to :cryptocurrency
      t.belongs_to :user
    end
  end
end

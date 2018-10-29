class CreateCryptocurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :cryptocurrencies do |t|
      t.string :name, null: false
      t.integer :current_price, null: false
      t.string :photo

      t.belongs_to :user, null: false
      t.timestamps null: false
    end
  end
end

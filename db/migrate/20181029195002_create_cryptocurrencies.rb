class CreateCryptocurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :cryptocurrencies do |t|
      t.string :name, null: false
      t.string :symbol, null: false

      t.belongs_to :user, null: false
      t.timestamps null: false
    end
  end
end

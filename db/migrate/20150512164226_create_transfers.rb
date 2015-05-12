class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.integer :userId
      t.string :currencyFrom
      t.string :currencyTo
      t.float :amountSell
      t.float :amountBuy
      t.float :rate
      t.datetime :timePlaced
      t.string :originatingCountry

      t.timestamps null: false
    end
  end
end

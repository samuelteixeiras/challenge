class Transfer < ActiveRecord::Base


	validates_presence_of :currencyFrom, :currencyTo, :amountSell,
   :amountBuy, :rate, :timePlaced, :originatingCountry 
end

class HomeController < ApplicationController

  protect_from_forgery except: :create


  def index
  	#Utility.getJson('{"userId": "134256", "currencyFrom": "EUR", "currencyTo": "GBP", "amountSell": 1000, "amountBuy": 747.10, "rate": 0.7471, "timePlaced" : "24-JAN-15 10:27:44", "originatingCountry" : "FR"}
    #')	
  end

  # receive the post request with the msg
  def create
    str = request.body.read
    params =  Utility.getJson(str)
    @transfer = Transfer.new
    @transfer.attributes = params
    #p @transfer

    if @transfer.save
      p "save"
    end

    render :text => "ok"

  end

 
end

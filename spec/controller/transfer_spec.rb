require "rails_helper"

RSpec.describe "home page", :type => :request do

  it "should respond with javascript" do
    json = '{"userId": "134256", "currencyFrom": "EUR", "currencyTo": "GBP", "amountSell": 1000, "amountBuy": 747.10, "rate": 0.7471, "timePlaced" : "24-JAN-15 10:27:44", "originatingCountry" : "FR"}'
    xhr :post, "/new_transfer", json
    expect(response.content_type) == Mime::JS
  end

end
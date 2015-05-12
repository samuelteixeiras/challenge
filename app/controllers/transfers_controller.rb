class TransfersController < ApplicationController
 
  protect_from_forgery except: :create

	# receive the post request with the msg
  def new
    str = request.body.read
    params =  Utility.getJson(str)
    @transfer = Transfer.new
    @transfer.attributes = params

  	respond_to do|format|
      	if @transfer.save
  			@transfer
        @country = Utility::COUNTRIES[@transfer.originatingCountry]

      	  	format.js
  	    end
    	end

  end

end

class Api::V1::HomesController < ApplicationController

  def today_vachana
   @vachana = "{'vachana': 'ವಚನ'}"
   #render json: vachana , status: :ok
   #render json: sahitya,vachana , status: :ok
   render :json => @vachana
   
 end
 def today_sahitya
	
   @sahitya = "{'sahitya': 'ಸಾಹಿತ್ಯ '}"
   render :json => @sahitya
 end
 def today_lister
	@lister=Vachana.all
	#@lister=@lister.order(params[:order].gsub(':',' ')) if params[:order]
	render :json => @lister, :content_type => 'application/json'
 end
end

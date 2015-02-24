class Api::V1::HomesController < ApplicationController

  def today_vachana
   vachana = "{'vachana': 'ವಚನ'}"
   render json: vachana , status: :ok
 end

end

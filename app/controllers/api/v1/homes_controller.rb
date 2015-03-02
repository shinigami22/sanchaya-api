class Api::V1::HomesController < ApplicationController

  def today_vachana
   vachana = "{'heading': 'Vachana', 'id': 1, 'vachanakaara': 'Basavanna', 'vachana': 'koodalasangamadeva'}"
   render json: vachana , status: :ok
 end

end

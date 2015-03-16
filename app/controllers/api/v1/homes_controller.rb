class Api::V1::HomesController < ApplicationController
  def today_vachana
    @vachana=Poem.all
    render :json => @vachana
  end
end

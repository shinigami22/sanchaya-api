class Api::V1::HomesController < ApplicationController
  def today_vachana
    @lister=Poet.all
    #paginate json: @lister
    @lister=Poet.paginate(:page => params[:page], :per_page => 30)
    respond_to do | format |
      format.json{
        render :json => {
          :current_page => @lister.current_page,
          :per_page => @lister.per_page,
          :total_entries => @lister.total_entries,
          :total_pages => @lister.total_pages,
          :entries => @lister
        }
      }
    end
  end
end

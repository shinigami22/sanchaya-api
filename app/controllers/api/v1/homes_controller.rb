class Api::V1::HomesController < ApplicationController
  def today_vachana
    @vachana=Poem.all
    render :json => @vachana
  end
  def find_poem
    @poem=Poem.find(params[:id]) if params[:id]
    render :json => @poem
  end
  def list_vachanakaara
    @vachanakaara=Poet.all
    render :json => @vachanakaara
  end
  def poet_info
    @info=PoetInformation.find(params[:id]) if params[:id]
    render :json => @info
  end
  def list_poems
    @vachanakaara=Poem.all
    render :json => @vachanakaara
  end
  def search_poet
    @found=Poet.search(params[:search]) if params[:search]
    @found1=Poem.search(params[:search]) if params[:search]
    @found2=PoetInformation.search(params[:search]) if params[:search]
    #render :json => @found1,@found

    respond_to do | format |
      format.json{

        render :json => {
          :data2 => @found2,
          :data1 =>@found1,
         :data => @found
        }
      }
    end
  end

end

class Api::V1::HomesController < ApplicationController
  # Returns a random poem/vachana
  def today_vachana
    @vachana=Poem.all
    c=@vachana.count
    td=1+rand(c)
    @vachana_today=Poem.find(td)
    render :json => @vachana_today
  end
  #associated Poem.id needs to be defined to retrieve a particular poem
  def find_poem
    @poem=Poem.find(params[:id]) if params[:id]
    render :json => @poem
  end
  # Returns all the poets/vachanakaara's
  def list_vachanakaara
    @vachanakaara=Poet.all
    render :json => @vachanakaara
  end
  # Returns details of the poet when associated ID is defined
  def poet_info
    @info=PoetInformation.find(params[:id]) if params[:id]
    render :json => @info
  end
  # Returns all the poems/vachanas
  def list_poems
    @vachanakaara=Poem.all
    render :json => @vachanakaara
  end
  # Return list of Poets matching a specific request
  def search_poet
    if params[:search]
      @poet_found=Poet.search(params[:search])
    else
      @poet_found=Poet.all
    end
    respond_to do | format |
      format.json{
        render :json => {
          :entries => @poet_found
        }
      }
    end
  end
  # Return list of Poems matching a specific request
  def search_poem
    if params[:search]
      @poem_found=Poem.search(params[:search])
    else
      @poem_found=Poem.all
    end
    respond_to do | format |
      format.json{
        render :json => {
          :entries => @poem_found
        }
      }
    end
  end
  # Return list of Poet details matching a specific request
  def search_info
    if params[:search]
      @info_found=PoetInformation.search(params[:search])
    else
      @info_found=PoetInformation.all
    end
    respond_to do | format |
      format.json{
        render :json => {
          :entries => @info_found
        }
      }
    end
  end
end

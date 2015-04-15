class Api::V1::HomesController < ApplicationController
  # Returns a random poem/vachana
  def today_vachana
    begin
      @vachana=Poem.all
      c=@vachana.count
      td=1+rand(c)
      @vachana_today=Poem.find(td)
      render :json => @vachana_today
    rescue ActiveRecord::RecordNotFound => e
      render json: {message: 'Resource is not available'}, status: :not_found
    end
  end
  #associated Poem.id needs to be defined to retrieve a particular poem
  def find_poem
    begin
      @poem=Poem.find(params[:id]) if params[:id]
      render :json => @poem
    rescue ActiveRecord::RecordNotFound => e
      render json: {message: 'Resource is not available'}, status: :not_found
    end
  end
  # Returns all the poets/vachanakaara's
  def list_vachanakaara
    begin
      @vachanakaara=Poet.all
      render :json => @vachanakaara
    rescue ActiveRecord::RecordNotFound => e
      render json: {message: 'Resource is not available'}, status: :not_found
    end
  end
  # Returns details of the poet when associated ID is defined
  def poet_info
    begin
      @info=PoetInformation.find(params[:id]) if params[:id]
      render :json => @info
    rescue ActiveRecord::RecordNotFound => e
      render json: {message: 'Resource is not available'}, status: :not_found
    end
  end
  # Returns all the poems/vachanas
  def list_poems
    begin
      @vachanakaara=Poem.all
      render :json => @vachanakaara
    rescue ActiveRecord::RecordNotFound => e
      render json: {message: 'Resource is not available'}, status: :not_found
    end
  end
  # Return list of Poets matching a specific request
  def search_poet
    @query = Poet.search do
      fulltext params[:search]
    end
    @products = @query.results
    render :json => @products
  end
  # Return list of Poems matching a specific request
  def search_poem
    @query = Poem.search do
      fulltext params[:search]
    end
    @products = @query.results
    render :json => @products
  end
  # Return list of Poet details matching a specific request
  def search_info
    @query = PoetInformation.search do
      fulltext params[:search]
    end
    @products = @query.results
    render :json => @products
  end
end

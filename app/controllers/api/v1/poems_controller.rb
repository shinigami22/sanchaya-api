class Api::V1::PoemsController < ApplicationController
	#before_action :authenticate_with_token!, only: [:create, :update, :destroy]
  #respond_to :json

  def index
    respond_with Poem.all
  end
  def show
    respond_with Poem.find(params[:id])
  end

  def create
    #poem = current_user.poems.build(poem_params)
    poem = Poem.new(poem_params)
    if poem.save
      render json: poem, status: 201, location: [:api, poem]
    else
      render json: { errors: poem.errors }, status: 422
    end
  end

  def update
    poem = Poem.find(params[:id])
    if poem.update(poem_params)
      render json: poem, status: 200, location: [:api, poem]
    else
      render json: { errors: poem.errors }, status: 422
    end
  end

   def destroy
    poem = Poem.find(params[:id])
    poem.destroy
    head 204
  end

  private

  def poem_params
    params.require(:poem).permit(:name, :pen_name, :sex)
  end
end

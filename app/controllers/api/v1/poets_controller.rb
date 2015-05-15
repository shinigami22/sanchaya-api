class Api::V1::PoetsController < ApplicationController
  before_action :authenticate_with_token!, only: [:create]
  respond_to :json

  def index
    respond_with Poet.all
  end
  def show
    respond_with Poet.find(params[:id])
  end

  def create
    poet = current_user.poets.build(poet_params)
    if poet.save
      render json: poet, status: 201, location: [:api, poet]
    else
      render json: { errors: poet.errors }, status: 422
    end
  end

  def update
    poet = current_user.poets.find(params[:id])
    if poet.update(poet_params)
      render json: poet, status: 200, location: [:api, poet]
    else
      render json: { errors: poet.errors }, status: 422
    end
  end

   def destroy
    poet = current_user.poets.find(params[:id])
    poet.destroy
    head 204
  end

  private

  def poet_params
    params.require(:poet).permit(:name, :pen_name, :sex)
  end
end

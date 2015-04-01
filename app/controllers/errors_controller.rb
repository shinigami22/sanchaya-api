class ErrorsController < ApplicationController

 #API URL Route Exception handling 
  def catch_404
    raise ActionController::RoutingError.new(params[:path])
  end
  #call handler using rescue_from
  rescue_from ActionController::RoutingError, :with => :error_render_method
  def error_render_method
    #render :file => 'public/404',
    render json: {message: 'Please check the URL path'},
    status: :not_found
  end
end

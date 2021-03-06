  require 'api_constraints'

  Rails.application.routes.draw do
    # Api default repond to JSON 
    namespace :api, defaults: {format: 'json'} do
      scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
        get "/today_vachana" => "homes#today_vachana"
      end
    end

  end

  require 'api_constraints'

  Rails.application.routes.draw do
  mount SabisuRails::Engine => "/sabisu_rails"
  devise_for :users
    # Api default repond to JSON 
    namespace :api, defaults: {format: 'json'} do
      scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
        get "/today_vachana" => "homes#today_vachana"
        get "/list_vachanakaara" => "homes#list_vachanakaara"
        get "/list_poems" => "homes#list_poems"
        get "/poet_info/:id" => "homes#poet_info"
        get "/find_poem/:id" => "homes#find_poem"
    
        resources :users, :only => [:show, :create, :update, :destroy] do
          resources :poets, :only => [:create, :update, :destroy]
        end

        resources :sessions, :only => [:create, :destroy]
        resources :poets, :only => [:show, :index]

        resources :vachana_sahityas, :only => [:show, :index, :today_vachana]
        resources :poems, :only =>[:show, :index]
    end
    
    match "*path", to: "errors#catch_404", via: :all
  end
end

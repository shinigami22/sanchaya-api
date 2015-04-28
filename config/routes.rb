  require 'api_constraints'

  Rails.application.routes.draw do
  devise_for :users
    # Api default repond to JSON 
    namespace :api, defaults: {format: 'json'} ,
                                constraints: {subdomain: 'api' }, path: '/' do
      scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
        get "/today_vachana" => "homes#today_vachana"
        get "/list_vachanakaara" => "homes#list_vachanakaara"
        get "/list_poems" => "homes#list_poems"
        get "/poet_info/:id" => "homes#poet_info"
        get "/find_poem/:id" => "homes#find_poem"
        get "/search_poet/:search" => "homes#search_poet"
        get "/search_poem/:search" => "homes#search_poem"
        get "/search_info/:search" => "homes#search_info"
        get "/test_search/:search" => "homes#test_search"
        resources :users, :only => [:show, :create, :update, :destroy]
      end
    end
    
    match "*path", to: "errors#catch_404", via: :all
  end

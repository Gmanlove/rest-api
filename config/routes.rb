# config/routes.rb
Rails.application.routes.draw do
  resources :api do
    collection do
      get 'find_by_name'
    end
  end
  post 'api/find_by_name/:name', to: 'api#create_by_name'
  get '/api/find_by_name/:name', to: 'api#show_by_name'
  patch '/api/find_by_name/:name', to: 'api#update_by_name'
  put '/api/find_by_name/:name', to: 'api#update_by_name'
  delete '/api/find_by_name/:name', to: 'api#destroy_by_name'
end

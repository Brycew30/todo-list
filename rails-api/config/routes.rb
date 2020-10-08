Rails.application.routes.draw do
  get '/lists' => 'lists#index'
  get '/lists/:item_name' => 'lists#show'
  post '/lists' => 'lists#create'
  get '/items' => 'items#index'
end

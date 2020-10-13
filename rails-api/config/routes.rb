Rails.application.routes.draw do
  get '/lists' => 'lists#index'
  get '/lists/:id' => 'lists#show'
  post '/lists' => 'lists#create'
  get '/items' => 'items#index'
  get '/items/:id' => 'items#show'
end

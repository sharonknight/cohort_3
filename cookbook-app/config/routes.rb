Rails.application.routes.draw do
  # get '/' => 'recipes#index'
  get '/recipes' => 'recipes#index'
  post '/recipes' => 'recipes#create'
  get '/recipes/new' => 'recipes#new'
  get '/recipes/:id/edit' => 'recipes#edit'
  patch '/recipes/:id' => 'recipes#update'
  
  
  get '/recipes/:id' => 'recipes#show'
end

Rails.application.routes.draw do
  get '/recipes' => 'recipes#home'
end

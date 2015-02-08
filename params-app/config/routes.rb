Rails.application.routes.draw do
  
  get '/message-form' => 'pages#form'
  post '/submit-message' => 'pages#submit'



  get '/user-message' => 'pages#get_params'
  get '/user-message2/:message' => 'pages#slug'
  get '/number-game' => 'pages#game'
  get '/number-game2/:guess' => 'pages#game2'

end

# How to play the new game:
# http://localhost:3000/number-game2/50
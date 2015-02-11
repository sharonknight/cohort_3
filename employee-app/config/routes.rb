Rails.application.routes.draw do
  get '/employee_data' => 'employees#employee'
  get '/employees' => 'employees#all_the_people'

  get '/add_employee' => 'employees#add_employee'
  post '/submit_employee' => 'employees#submit_employee'



  get '/' => 'jobs#index'
  get '/jobs' => 'jobs#index'
  get '/jobs/:id' => 'jobs#show'
  get '/jobs/new' => 'jobs#new'
  post '/jobs' => 'jobs#create'
end

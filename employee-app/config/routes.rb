Rails.application.routes.draw do
  get '/employee_data' => 'employees#employee'
  get '/employees' => 'employees#all_the_people'
end

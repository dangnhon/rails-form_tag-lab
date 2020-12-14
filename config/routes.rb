Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Some notes to pay attention to:
  #1. new action methods should be above the show action or else there will be conflicts in the /:id

  #2. How to link to routes for create and new (they go hand in hand and have to both be present). 
  #   "GET method" is for the NEW action because a user has to "GET" the form for them to input data.
  #   "POST method" is for the CREATE action because once a user hits the "submits" button, their data is created and saved 
  #   and then it redirects to some show page erb or index erb.
  
  resources :students, only: :index
  post 'students', to: 'students#create'
  get 'students/new', to: 'students#new', as: 'new_student'
  get 'students/:id', to: 'students#show', as: 'student'
end

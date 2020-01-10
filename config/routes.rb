Rails.application.routes.draw do

  ## Students CRUD ##
  
  get '/students', to: "students#index"
  get '/students/search', to: "students#searched", as: :searched
  get '/students/new', to: "students#new"
  get '/students/:id', to: "students#show", as: :student
  get '/students/:id/edit', to: "students#edit", as: :student_edit
  post '/students', to: "students#create"
  patch '/students/:id', to: "students#update"
  delete '/students/:id', to: "students#destroy"
  

  ## Schools Methods ##

  get '/schools', to: "schools#index"
  get '/schools/:id', to: "schools#show", as: :school


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

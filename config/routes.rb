Rails.application.routes.draw do
  resources :meetings
  
  root to: 'homepage#index', as: :month
  get "homepage/week",to: "homepage#week", as: :week

  get "/habits", to: "habit#index", as: :habits
  post "/habits", to: "habit#create", as: :create
  post "/answer", to: "habit#answer", as: :answer
  get "/habits/edit/:id", to: "habit#edit", as: :edit
  get "/habits/export", to: "habit#export", as: :export
  patch "/habits/edit/:id", to: "habit#update", as: :update
  delete "/:id/delete", to: "habit#delete", as: :delete
end

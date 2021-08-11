Rails.application.routes.draw do
  resources :meetings
  root to: 'homepage#index', as: :month
  get "homepage/week",to: "homepage#week", as: :week

  get "/habits", to: "habit#index", as: :habits
  get "/new", to: "habit#new", as: :new
  post "/new", to: "habit#create", as: :create
  post "/answer", to: "habit#answer", as: :answer
  get "/edit/:id", to: "habit#edit", as: :edit
  patch "/edit/:id", to: "habit#update", as: :update
  delete "/:id/delete", to: "habit#delete", as: :delete
end

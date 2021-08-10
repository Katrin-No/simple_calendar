Rails.application.routes.draw do
  resources :meetings
  root to: 'homepage#index', as: :month
  get "homepage/week",to: "homepage#week", as: :week
end

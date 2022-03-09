Rails.application.routes.draw do
  get "about", to: "about#index"
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create" # A same URL (/sign_up) can handle multiple types of requests (verbs)

  root to: "main#index"
end

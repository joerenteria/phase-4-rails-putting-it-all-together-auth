Rails.application.routes.draw do
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  destroy "/logout", to: "sessions#destroy"
  get "/recipies" , to: "recipies#index"
  post "/recipies", to: "recipies#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

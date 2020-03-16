Rails.application.routes.draw do
  get "/", to: "users#list"
  get "users/new", to: "users#new"
  get "users/show/:id", to: "users#show"
  get "users/edit/:id", to: "users#edit"
  post "users", to: "users#create"
  patch "users/:id", to: "users#update", as: :user
  delete "users/:id", to: "users#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

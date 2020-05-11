Rails.application.routes.draw do
  devise_for :users
  get "/", to: "pages#home", as: "root" #want the route to actually be listings
  get "/listings", to: "listings#index", as: "listings"

end

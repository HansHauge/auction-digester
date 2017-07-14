Rails.application.routes.draw do
  resources :auctions

  root to: "auctions#new"
end

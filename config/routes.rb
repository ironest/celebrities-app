Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "celebrities#index", as: "root"
  get "/celebrities/:id", to: "celebrities#show", as: "celebrity"
  post "/celebrities/", to: "celebrities#create"
  put "/celebrities/:id", to: "celebrities#update"
  patch "/celebrities/:id", to: "celebrities#update"
  delete "/celebrities/:id", to: "celebrities#destroy"

end

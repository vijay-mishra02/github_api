Rails.application.routes.draw do
  root "repositories#index"

  get "/repositories", to: "repositories#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

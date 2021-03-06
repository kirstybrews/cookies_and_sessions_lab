Rails.application.routes.draw do
  resources :products, only: :index
  get '/', to: "application#cart"
  get '/products', to: "products#index"
  post '/', to: "products#add_to_cart"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

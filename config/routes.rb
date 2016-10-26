Rails.application.routes.draw do
  resources :users
  resources :users do
  member do
    get 'show_image'
  end
end
root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

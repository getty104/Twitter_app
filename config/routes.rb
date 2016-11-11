Rails.application.routes.draw do
  resources :group_libraries
  resources :groups
  get 'static_pages/home'

	get    'login'   => 'sessions#new'
	post   'login'   => 'sessions#create'
	delete 'logout'  => 'sessions#destroy'
	get    'home'    => 'static_pages#home'
	
	root 'static_pages#home'
	resources :users
	resources :users do
		resources :groups
		member do
			get 'show_image'
			get 'show_url'
		end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

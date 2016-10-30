Rails.application.routes.draw do
  get 'static_pages/home'

	get    'login'   => 'sessions#new'
	post   'login'   => 'sessions#create'
	delete 'logout'  => 'sessions#destroy'
	get    'home'    => 'static_pages#home'
	root 'static_pages#home'
	resources :users
	resources :users do
		member do
			get 'show_image'
		end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

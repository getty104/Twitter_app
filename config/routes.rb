Rails.application.routes.draw do
	get    'login'   => 'sessions#new'
	post   'login'   => 'sessions#create'
	delete 'logout'  => 'sessions#destroy'
	root 'sessions#new'
	resources :users
	resources :users do
		member do
			get 'show_image'
		end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

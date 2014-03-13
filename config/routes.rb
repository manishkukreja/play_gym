Playgym::Application.routes.draw do
  	root :to => 'home#index'
	
	resources :members do
		collection do
			get 'find_last_day'
		end
		member do 
			post 'trigger_email'
		end
	end

  	resources :memberships

	resources :home do
		collection do
			get "invite_friends"
			get "about_us"
			get "terms_of_service"
			get "privacy"
			get "coming_soon"
		end
	end  

	resources :activities do
		collection do
			get 'events_list'
		end
		resources :comments
	end
	  	
	devise_for :users do
		match "users/sign_out" => 'devise/sessions#destroy'
	end	

  	post '/auth/:provider/callback' => 'social_authentications#create'
end

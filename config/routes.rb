Playgym::Application.routes.draw do
  get "members/index"
  	root :to => 'home#index'
	
	resources :members do
		collection do
			get 'find_last_day'
		end
		member do 
			post 'trigger_email'
		end
	end
	
	namespace :admin do
		get "/dashboard" => "dashboard#index"
		resources :members do
			post "send_birthday_mail" => "members#send_birthday_mail"
			post "send_last_day_reminder_mail" => "members#send_last_day_reminder_mail"
		end
	end
	
	resources :discounts
	resources :activity_pictures
	resources :activity_images
	resources :social_authentications
	resources :partners do
		collection do 
			get 'dining'
			get 'reading'
		end
	end

	resources :activity_skills
	resources :skills
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
	  	
	devise_for :users, controllers: { registrations: "registrations" } do
		match "users/sign_out" => 'devise/sessions#destroy'
	end	

	resources :users
		resources :comments do
		collection do
			get 'all_comments'
		end
	end

  	post '/auth/:provider/callback' => 'social_authentications#create'
end

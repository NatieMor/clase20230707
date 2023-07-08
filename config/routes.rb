Rails.application.routes.draw do
  get 'welcome/index'
  get 'home/index'
  
  resources :tweets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get '/home', to: "home#index"
get '/welcome', to: "welcome#index"
  # Defines the root path route ("/")
 root "welcome#index"

 devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
 }
 

=begin
 unauthenticated do
  root :to => 'welcome#index'
end

authenticated do
  root :to => 'home#index'
end
=end
end

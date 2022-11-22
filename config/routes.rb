Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  require 'sidekiq/web'
  
  root "welcome#index"
  get "/send_mail" => "welcome#send_mail"

  
  mount Sidekiq::Web => '/sidekiq'
  
 
 
end

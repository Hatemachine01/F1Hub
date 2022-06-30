Rails.application.routes.draw do
  get '/', to: 'static_pages#home'
  get '/calendar', to: 'static_pages#calendar'
  get '/next', to: 'static_pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

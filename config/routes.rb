Rails.application.routes.draw do
  get '/', to: 'customers#index'
  get '/customers/alphabetized', to: 'customers#alphabet'
  get '/customers/missing_email', to: 'customers#no_email'
  devise_for :customers, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

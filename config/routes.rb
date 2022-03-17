Rails.application.routes.draw do
  get 'customers/index'
  get '/customers/alphabetized', to: 'customers#alphabet'
  devise_for :customers, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

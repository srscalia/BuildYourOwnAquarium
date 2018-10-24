Rails.application.routes.draw do
  resources :decors
  resources :equipment
  resources :schools
  resources :aquaria
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'aquaria#homepage'
end

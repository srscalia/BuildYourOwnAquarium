Rails.application.routes.draw do
  # resources :decors
  # resources :equipment
  # resources :fish
  # resources :aquaria
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get '/aquaria', to: 'aquaria#aquaria', as: 'aquaria'
post '/aquaria', to: 'aquaria#select_aquarium', as: 'aquarium_selection_path'
get '/fishies', to: 'fish#fishies', as: 'fishies'
post '/fishies', to: 'fish#select_fish', as: 'fishies_selection_path'
get '/equipment', to: 'equipment#equipment', as: 'equipment'
post '/equipment', to: 'equipment#select_equipment', as: 'equipment_selection_path'
get '/decors', to: 'decors#decors', as: 'decors'
post '/decors', to: 'decors#select_decor', as: 'decor_selection_path'

end

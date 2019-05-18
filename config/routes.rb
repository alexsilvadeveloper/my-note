Rails.application.routes.draw do
  root to: 'evaluations#index'
  resources :evaluations
  resources :disciplines
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

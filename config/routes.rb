Rails.application.routes.draw do
  devise_for :workers, controllers: { sessions: 'workers/sessions' }
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "categories#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

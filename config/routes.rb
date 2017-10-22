Rails.application.routes.draw do
  root to: 'home#show'
  mount Swaggard::Engine, at: '/api_docs/swagger/'
  mount_devise_token_auth_for 'User', at: 'auth'
  get 'auth/facebook/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  scope module: 'api' do
    namespace :v1 do
      resources :appointments
      resources :doctors
      resources :patients
      resources :users
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :clinics
  resources :insurances
  resources :specialties
  resources :doctors
  resources :users

  namespace :api do
    namespace :v1 do
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      post '/docauth', to: 'docauth#create'
      get '/current_doctor', to: 'docauth#show'
    end
  end

end

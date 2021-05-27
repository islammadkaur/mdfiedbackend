Rails.application.routes.draw do
  resources :categories
  resources :checklists
  resources :messages
  resources :users

  namespace :api do
    namespace :v1 do
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      post '/docauth', to: 'docauth#create'
      get '/current_doctor', to: 'docauth#show'
      post '/clinicauth', to: 'clinicauth#create'
      get '/current_clinic', to: 'clinicauth#show'
    end
  end

end

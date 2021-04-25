Rails.application.routes.draw do
  resources :sundays
  resources :saturdays
  resources :fridays
  resources :thursdays
  resources :wednesdays
  resources :tuesdays
  resources :mondays
  resources :doctor_specialties
  resources :user_doctor_messages
  resources :messages
  resources :doctor_hospitals
  resources :appointment_doctor_users
  resources :clinics_insurances
  resources :appointments
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
      post '/clinicauth', to: 'clinicauth#create'
      get '/current_clinic', to: 'clinicauth#show'
    end
  end

end

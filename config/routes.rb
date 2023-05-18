Rails.application.routes.draw do
  get '/current_user', to: 'current_user#index'
  devise_for :users, path: '', path_names: {
                                              sign_in: 'login',
                                              sign_out: 'logout',
                                              registration: 'signup'
                                            },
                                            controllers: {
                                              sessions: 'users/sessions',
                                              registrations: 'users/registrations'
                                            }
  # resources :users
  namespace :api do
    namespace :v1 do
      resources :tutors
      resources :reservations
    end
  end

end

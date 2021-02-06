Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :challenges

      post '/api/v1/user_challenges', to: 'i/v1/user_challenges#create'
    end
  end
end

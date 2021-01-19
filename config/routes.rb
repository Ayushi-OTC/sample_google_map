Rails.application.routes.draw do
  root 'places#index'
  resources :places

  namespace :api do
    namespace :v1 do
      resources :places, only: [:index]
    end
  end
end

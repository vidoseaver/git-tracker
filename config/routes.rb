Rails.application.routes.draw do
  get 'commits/index'

  namespace :api do
    namespace :v1 do
      resources :commits, only: [:create]
    end
  end
end

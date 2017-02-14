Rails.application.routes.draw do

  root to: "commits#index"

  namespace :api do
    namespace :v1 do
      resources :commits, only: [:create]
    end
  end
end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :mycars, only: [ :index, :show, :create, :destroy, :update ] do
        resources :hondas, only: [ :index, :show, :create, :destroy, :update ]
      end
    end
  end
end

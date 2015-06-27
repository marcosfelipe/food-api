Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :stadiums do
        resources :restaurants
      end
      resources :restaurants
    end
  end
end

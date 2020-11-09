Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :tasks, except: [:created_at, :updated_at]
      resources :users, except: [:created_at, :updated_at]
    end
  end
    
end

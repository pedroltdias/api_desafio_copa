Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teams, except: [:destroy]
      resources :matches, except: [:destroy]
      resources :players, except: [:destroy]
    end
  end
end

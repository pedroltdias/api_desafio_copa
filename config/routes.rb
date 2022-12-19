Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teams
      resources :matches
      resources :match_teams
      resources :players
    end
  end
end

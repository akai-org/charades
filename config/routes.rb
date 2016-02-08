Rails.application.routes.draw do
  resources :games do
    resources :teams
  end
  resources :categories
end

Rails.application.routes.draw do
  resources :games do
    resources :teams
    resource :round
  end
  resources :categories
end

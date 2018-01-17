Rails.application.routes.draw do
  resources :courses do
    resources :scores
  end
  
  root 'courses#index'
end

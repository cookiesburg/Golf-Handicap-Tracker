Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  resources :courses do
    resources :scores
  end
  
  root 'courses#index'
end

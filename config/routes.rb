Rails.application.routes.draw do
  
  devise_for :usuarios
  #root 'home#home'
  root :to => "home#home"
  resources :contas
end

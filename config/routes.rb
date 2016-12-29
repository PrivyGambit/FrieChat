Rails.application.routes.draw do
  match '*any' => 'application#options', :via => [:options]

  resources :chats

  root 'chats#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

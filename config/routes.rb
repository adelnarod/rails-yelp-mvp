Rails.application.routes.draw do
  resources :restaurants, only: %i[index create new show] do
    resources :reviews, only: %i[create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

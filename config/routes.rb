Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  
  resources :post_images,only: [:new,:index,:create,:destroy,:show] do
       resource :favorites, only: [:create, :destroy]
        resources :post_coments,only:[:create,:destroy]
  end
end
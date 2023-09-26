Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root 'wch_lst_lists#index'
  resources :wch_lst_lists, except: [:edit, :update] do
    resources :wch_lst_bookmarks, only: [:new, :create]
    resources :wch_lst_reviews, only: :create
  end
  resources :wch_lst_bookmarks, only: :destroy
  resources :wch_lst_reviews, only: :destroy
end

Rails.application.routes.draw do
  # root 'lists#index'
  resources :lists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[index new create]
  end
  resources :bookmarks, only: :destroy
end

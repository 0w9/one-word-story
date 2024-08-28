Rails.application.routes.draw do
  resources :stories do
    member do
      post 'add_word'
    end
  end
  
  root "pages#home"
  
  resources :stories, only: [:index, :show, :new]
end

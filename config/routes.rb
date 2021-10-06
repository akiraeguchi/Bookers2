Rails.application.routes.draw do
  root to: 'homes#top'
   get '/home/about' => 'homes#about'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  resources :users, only: [:index, :show, :edit, :update]

end
Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'homes#top'
  get 'about' => 'homes#about'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  resources :users, only: [:index, :show, :edit, :update]

end
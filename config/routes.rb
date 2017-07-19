Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :books do
    collection do
      get 'selected'
      get 'our_collection'
    end
  end
  post '/books/choose', to: 'books#choose', as: 'choose'

  resource :home

  root 'home#index'
end

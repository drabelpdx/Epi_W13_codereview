Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin_console', as: 'rails_admin'
  devise_for :admins
  devise_for :users

  root :to => 'categories#index'

  get "/ref", to: "pages#ref", as: :ref_page

  resources :categories do
    resources :projects
  end

    resources :posts do
      resources :comments
    end

end

Rails.application.routes.draw do
  root 'main#index'
  resources :products, only: [:show]
  resources :categories, only: [:show] do
    resources :sub_categories, only: [:show] do
      resources :sub_sub_categories, only: [:show]
    end
  end

  namespace :admin do
    root 'main#index'
    resources :products
    resources :categories do
      resources :sub_categories do
        resources :sub_sub_categories
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

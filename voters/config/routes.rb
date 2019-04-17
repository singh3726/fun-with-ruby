Rails.application.routes.draw do
  root 'welcome#index'

  match ':controller(/:action(/:id))', :via=> [:get, :post]
  resources :member do
    collection { post :import}
  end
  resources :search
  resources :order_by
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

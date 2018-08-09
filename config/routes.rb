Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      get 'basket/:user_uuid/show', as: 'basket_show', to: 'basket#show'
      post 'basket/:user_uuid/add', as: 'basket_add_product', to: 'basket#add'

      get 'products', as: 'products_index', to: 'product#index'
      get 'product/:reference/show', as: 'product_show', to: 'product#show'
    end
  end
end

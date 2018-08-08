Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      get 'basket/:user_uuid/show', as: 'basket_show', to: 'basket#show'
      patch 'basket/:user_uuid/update', as: 'basket_update', to: 'basket#update'
      patch 'basket/:user_uuid/add/:product_id', as: 'basket_add_product', to: 'basket#add'
      patch 'basket/:user_uuid/remove/:product_id', as: 'basket_delete_product', to: 'basket#remove'

      get 'products', as: 'products_index', to: 'product#index'
      get 'product/:reference/show', as: 'product_show', to: 'product#show'
    end
  end
end

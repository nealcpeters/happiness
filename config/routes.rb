Happiness::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'images#index'
  get '/images/:id/up', to: 'images#up'
  get '/images/:id/down', to: 'images#down'

  get '/inspirations', to: 'inspirations#index', as: "inspirations"
  post '/inspirations', to: 'inspirations#create', as: "inspirations_create"
  get '/inspirations/:id/up', to: 'inspirations#up'
  get '/inspirations/:id/down', to: 'inspirations#down'

  get '/jubilations', to: 'jubilations#index', as: "jubilations"
  post '/jubilations', to: 'jubilations#create', as: "jubilations_create"
  get '/jubilations/:id/up', to: 'jubilations#up'
  get '/jubilations/:id/down', to: 'jubilations#down'


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

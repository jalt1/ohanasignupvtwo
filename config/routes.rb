Ohanasignupvtwo::Application.routes.draw do
  devise_for :admins
  root "categories#index"
  # Routes for the Category resource:
  # CREATE
  get '/categories/new', controller: 'categories', action: 'new', as: 'new_category'
  post '/categories', controller: 'categories', action: 'create', as: 'categories'

  # READ
  get '/categories', controller: 'categories', action: 'index'
  get '/categories/:id', controller: 'categories', action: 'show', as: 'category'

  # UPDATE
  get '/categories/:id/edit', controller: 'categories', action: 'edit', as: 'edit_category'
  patch '/categories/:id', controller: 'categories', action: 'update'

  # DELETE
  delete '/categories/:id', controller: 'categories', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # Routes for the Slot resource:
  # CREATE
  get '/slots/new', controller: 'slots', action: 'new', as: 'new_slot'
  post '/slots', controller: 'slots', action: 'create', as: 'slots'

  # READ
  get '/slots', controller: 'slots', action: 'index'
  get '/slots/:id', controller: 'slots', action: 'show', as: 'slot'

  # UPDATE
  get '/slots/:id/edit', controller: 'slots', action: 'edit', as: 'edit_slot'
  patch '/slots/:id', controller: 'slots', action: 'update'

  # DELETE
  delete '/slots/:id', controller: 'slots', action: 'destroy'
  #------------------------------

  # Routes for the Course resource:
  # CREATE
  get '/courses/new', controller: 'courses', action: 'new', as: 'new_course'
  post '/courses', controller: 'courses', action: 'create', as: 'courses'

  # READ
  get '/courses', controller: 'courses', action: 'index'
  get '/courses/:id', controller: 'courses', action: 'show', as: 'course'

  # UPDATE
  get '/courses/:id/edit', controller: 'courses', action: 'edit', as: 'edit_course'
  patch '/courses/:id', controller: 'courses', action: 'update'

  # DELETE
  delete '/courses/:id', controller: 'courses', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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

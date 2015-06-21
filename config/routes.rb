Rails.application.routes.draw do

  root  'static_pages#home'
  get 'home' =>  'static_pages#home'
  get 'signup' => 'users#new'
  get 'user_edit' => 'users#edit'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
get 'doctor_adds/search' => 'doctor_adds#search'
post 'doctor_adds/result_path' => 'doctor_adds#result'
get 'doctor_adds/reserve_path/:id' => 'doctor_adds#reserve'
get 'doctor_adds/reserve/:id' => 'doctor_adds#reserve'
get 'user_reserves/new/:id' => 'user_reserves#new'
get 'user_reserves/create_reserve/:id' => 'user_reserves#create_reserve'
get 'user_reserves/test' => 'user_reserves#test'
get 'user_reserves/index_temp' => 'user_reserves#index_temp'
get 'index_temp'=> 'user_reserves#index_temp'
  resources :user_reserves
  resources :doctor_adds
  resources :doctors
  resources :users
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

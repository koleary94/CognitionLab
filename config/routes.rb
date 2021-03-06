Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'experiment#show_homepage'

  get 'video/:id' => 'experiment#show_video'
  get 'finished' => 'experiment#show_finished'

  get 'user_info' => 'users#show'
  get 'create_user' => 'users#create'
  post 'update' => 'users#update'
  get 'users' => 'users#index'

  get 'video_form_info' => 'video_form#index'
  get 'video_form' => 'video_form#show'
  post 'video_form_answers' => 'video_form#create_answer'

  get 'social_form' => 'social#show'
  get 'social_form_info' => 'social#index'
  post 'social_form_answers' => 'social#create_answer'

  get 'emotional_form_instructions' => 'emotional#show_instructions'
  get 'emotional_form' => 'emotional#show'
  get 'emotional_form_info' => 'emotional#index'
  post 'emotional_form_answers' => 'emotional#create_answer'

  get 'test_results' => 'results#index'
  

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

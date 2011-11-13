StoryBook::Application.routes.draw do
  resources :paragraphs

  resources :stories
  
  
 

  resources :books

  get "books/index"

  get "books/show"

  get "books/edit"

  get "book/index"

  get "book/show"

  get "book/edit"
  #match "create_story/:book_id" => "stories#new"
  #map.create_story '/create_story/:book_id', :controller => 'stories', :action => 'new'
  match "create_paragraph/:story_id" => "stories#new"
  #map.create_paragraph '/create_paragraph/:story_id', :controller => 'paragraphs', :action => 'new'
  match "edit_book/:book_id" => "stories#edit"
 # map.edit_book '/edit_book/:book_id', :controller => 'books', :action => 'edit'
  match "edit_story/:book_id" => "stories#edit"
  #map.edit_story '/edit_story/:book_id/:story_id', :controller => 'stories', :action => 'edit'
  match "edit_paragraph/:story_id" => "paragraphs#edit"
  #map.edit_paragraph '/edit_paragraph/:story_id/:paragraph_id', :controller => 'paragraphs', :action => 'edit'
 

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

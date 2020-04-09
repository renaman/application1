Rails.application.routes.draw do
  root 'homes#top'
  resources :books
  # post 'books' => 'books#create'
  # get 'books' => 'books#index'
  # get 'books/:id' => 'books#show',as: 'show_books'
  # get 'books/:id/edit' => 'books#edit',as: 'edit_books'
  # patch 'books/:id' => 'books#update',as: 'update_books'
  # delete 'books/:id' => 'books#destroy',as: 'destroy_books'
end

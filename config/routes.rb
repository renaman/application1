Rails.application.routes.draw do
  get 'top' => 'homes#top'
  get 'new' => 'books#new'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show'
  get 'books/:id/edit' => 'books#edit',as: 'edit_books'
  patch 'books/:id' => 'books#update',as: 'update_books'
  delete 'books/:id' => 'books#destroy',as: 'destroy_books'
end

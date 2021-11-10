Rails.application.routes.draw do
  resources :libros

  get 'libros_test', to: 'libros#test', as: 'libros_test_link'


  root 'libros#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

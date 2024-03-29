Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'

  }, controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/books", to: "books#get_all_books"
  get "/books/:id", to: "books#get_book_by_id"

  post "/books", to: "books#add_book"

  get "/Author", to: "author#get_all_authors"
  get "/Author/:id", to: "author#get_author_by_id"

  get "/Category", to: "categories#get_all_categories"
  get "/Category/:id", to: "categories#get_category_by_id"

  get"/example", to: "example#example_handler"

  get"/books", to: "books#add_book"

end

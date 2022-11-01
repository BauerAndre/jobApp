Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get    "jobs",          to: "jobs#index"
  # Create
  get    "jobs/new",      to: "jobs#new",  as: :new_job
  post   "jobs",          to: "jobs#create"
  # Read one - The `show` route needs to be *after* `new` route.
  get    "jobs/:id",      to: "jobs#show", as: :job
  # Update
  get    "jobs/:id/edit", to: "jobs#edit", as: :edit_job
  patch  "jobs/:id",      to: "jobs#update"
  # Delete
  delete "jobs/:id",      to: "jobs#destroy"
  # Defines the root path route ("/")
  # root "articles#index"
end

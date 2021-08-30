Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root "departments#index"
# I WANT TO DO A HOMEPAGE OR AN ABOUT PAGE OR SOMETHING INSTEAD

resources :departments do
  resources :items do
    resources :comments
  end
end

resources :items do
  resources :comments
end


# get "/departments", to: "departments#index"
# get "/departments/new", to: "departments#new"
# post "/departments", to: "departments#create"
# get "/departments/:id", to: "departments#show"
# get "/departments/:id/edit", to: "departments#edit"
# put "/departments/:id", to: "departments#update"
# patch "/departments/:id", to: "departments#update"
# delete "/departments/:id", to: "departments#destroy"

# get "/departments/:department_id/items", to: "items#index"
# get "/departments/:department_id/items/new", to: "items#new"


end

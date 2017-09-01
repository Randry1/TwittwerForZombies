Rails.application.routes.draw do
  root to: "zombies#index"
  resources :zombies do
    get :decomp, on: :member
    get :filter, on: :collection
  end
  get '/filter' => "zombies#filter"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :school_classes, only: [:create, :edit, :new, :show, :index, :update]
  resources :students, only: [:create, :edit, :new, :show, :index, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

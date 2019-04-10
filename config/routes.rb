Rails.application.routes.draw do
  # get 'school_classes/new'
  #
  # get 'school_classes/create'
  #
  # get 'school_classes/edit'
  #
  # get 'school_classes/update'
  #
  # get 'school_classes/show'
resources :school_classes
resources :students
  # get 'students/new'
  #
  # get 'students/create'
  #
  # get 'students/edit'
  #
  # get 'students/update'
  #
  # get 'students/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

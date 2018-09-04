Rails.application.routes.draw do
  get 'users/login'
  get 'users/signup'
  get 'site/index'
  resource :task
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'site#index'
end

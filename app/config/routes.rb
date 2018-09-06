Rails.application.routes.draw do
  get 'login' => 'sessions#show_login_page'
  post 'login' => 'sessions#login'
  get 'logout' => 'sessions#logout'
  get 'signup' => 'users/signup'
  get 'site/index'
  resource :task
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'site#index'
end

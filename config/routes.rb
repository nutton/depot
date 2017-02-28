Rails.application.routes.draw do
  resources :projects
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  root to: 'base#index'
  resource :configuration
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

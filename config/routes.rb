Rails.application.routes.draw do
  resources :js_sripts
  root to: 'js_sripts#index'
end

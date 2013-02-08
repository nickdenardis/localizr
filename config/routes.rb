Localizr::Application.routes.draw do
  get "websites/index"

  resources :websites

  root :to => 'Websites#index'
end

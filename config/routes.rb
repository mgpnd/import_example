Rails.application.routes.draw do
  get '/example', to: 'key_based_import_example#index'
  get '/example', to: 'base_import_example#index'
end

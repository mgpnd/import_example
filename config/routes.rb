Rails.application.routes.draw do
  get '/example', to: 'key_import_example#index'
  get '/example', to: 'array_import_example#index'
end

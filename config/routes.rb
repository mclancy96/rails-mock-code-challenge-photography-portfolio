Rails.application.routes.draw do
  resources :portfolios, only: %i[index show new create]
end

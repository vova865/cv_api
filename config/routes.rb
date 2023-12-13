Rails.application.routes.draw do
  namespace :api do
    get 'weather/current_temperature', to: 'weather#current_temperature'
  end
end

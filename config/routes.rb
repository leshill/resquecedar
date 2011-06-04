Cedar::Application.routes.draw do
  mount Resque::Server.new, :at => "/resque"

  resources :demos
end

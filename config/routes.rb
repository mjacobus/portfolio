Portfolio::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  
  root to: 'high_voltage/pages#show', id: 'about'
  
  get ':id.html' => 'high_voltage/pages#show', as: :static
  
  get '/portfolio/technologies' => 'portfolio/technologies#index', as: :portfolio_technologies
end

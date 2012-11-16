Portfolio::Application.routes.draw do
  get "jobs/index"

  get "jobs/show"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  
  root to: 'high_voltage/pages#show', id: 'about'
  
  get ':id.html' => 'high_voltage/pages#show', as: :static
  
  get '/portfolio/technologies' => 'portfolio/technologies#index',  as: :portfolio_technologies
  get '/portfolio/jobs'         => 'portfolio/jobs#index',          as: :portfolio_jobs
  get '/portfolio/jobs/:job'    => 'portfolio/jobs#show',           as: :portfolio_job
end

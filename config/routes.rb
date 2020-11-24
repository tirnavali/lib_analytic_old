Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/index/:id', to: 'welcome#counter'

  resources :acquisition_reports
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

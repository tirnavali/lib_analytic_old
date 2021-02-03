Rails.application.routes.draw do
  resources :journal_doc_reports
  resources :personels
  resources :journal_doc_analytics
  resources :reference_analytics
  get '/', to: 'welcome#index'
  get 'welcome/index'
  get 'welcome/index/:id', to: 'welcome#counter'

  resources :acquisition_reports
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

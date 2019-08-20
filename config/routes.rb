Rails.application.routes.draw do
  root to: 'articles#index'

  get 'articles', to: 'articles#index'

  get 'articles/new', to: 'articles#new', as: :new_article
  post 'articles', to: 'articles#create'

  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'

  get 'articles/:id', to: 'articles#show', as: :article

  delete 'articles/:id', to: 'articles#destroy'
end

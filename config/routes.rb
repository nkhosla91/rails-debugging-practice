Rails.application.routes.draw do
  resources :wizards, only: [:index]
  root "wizards#index"

  get 'wizards/new', to: 'wizards#new', as: 'new_wizard'
  get 'wizards/:id', to: 'wizards#show', as: 'wizard'
  get 'wizards/:id/edit', to: 'wizards#edit', as: 'edit_wizard'
  # get 'wizards/:id/addspell', to: 'wizards#addspell', as: 'add_spell_wizard'
  delete 'wizards/:id', to: 'wizards#destroy', as: 'destroy_wizard'
  post 'wizards', to: 'wizards#create'
  patch 'wizards/:id', to: 'wizards#update'
  get 'wizards/:id/addspell', to: 'favorite_spells#new', as: 'add_spell_wizard'



  get 'favoritespells', to: 'favorite_spells#index', as: 'favorite_spells'
  post 'favoritespells', to: 'favorite_spells#create'

  get 'spells', to: 'spells#index'
  get 'spells/new', to: 'spells#new', as: 'new_spell'
  get 'spells/:id', to: 'spells#show', as: 'spell'
  post 'spells', to: 'spells#create'
  




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

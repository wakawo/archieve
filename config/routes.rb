Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users
  resources :blogs do
    # DAY16 task addition
    resources :comments, :only => [:create, :edit, :update, :destroy]
  end
  
  # DAY12 task addition
  get '/contacts/new', to: 'contacts#new'
  post '/contacts/new', to: 'contacts#back'
  post '/contacts/confirm', to: 'contacts#confirm'
  post '/contacts/thanks', to: 'contacts#thanks'
  
  # DAY16 task addition
  resources :users, :only => [:index, :show]
  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
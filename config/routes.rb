Rails.application.routes.draw do

  resources :questions
  resources :advertisements
  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_post, except: [:index]
   end
   
  resources :users, only: [:new, :create]   
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end
 
  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'
  get 'faq' => 'welcome#faq'

  root 'welcome#index'
  
end

Rails.application.routes.draw do
  
  resources :chapter_test_time
  resources :administradors
  resources :alunos
  resources :test
  resources :chapter
  resources :user_matter
  resources :content
  resources :matter


  devise_for :users, :controllers => { registrations: 'registrations' }
  

  root 'static_pages#home'
  root :to => "home#index"


  get  '/provas',   to: 'static_pages#provas'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signupaluno',  to: 'alunos#new'
  get  '/signupadministrador', to: 'administradors#new'
  post '/signupaluno',  to: 'alunos#create'

  post '/signupadministrador',  to: 'administradors#create'



  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  get '/alunos', to: 'alunos#index'
  get '/topico1', to: 'static_pages#topico1'
  get '/topico2', to: 'static_pages#topico2'
  get '/topico3', to: 'static_pages#topico3'
  get '/topico4', to: 'static_pages#topico4'
  get '/topico5', to: 'static_pages#topico5'
  get '/topico6', to: 'static_pages#topico6'
  get '/topicos', to: 'static_pages#topicos'



  get "testeusuario", to: 'static_pages#teste'


   

 # post   '/teste',   to: 'static_pages#teste'
 # get   '/teste',   to: 'static_pages#teste'
 #get 'chapter/new'
 #get 'user_matter/new'
 #get 'content/new'
 #get 'matter/new'
 #get 'chapter_test_time/new' 
#get 'chapter_test_time/edit'
end

Rails.application.routes.draw do
  
  resources :chapter_test_times
  resources :administradors
  resources :alunos
  resources :provas
  resources :capitulos
  resources :materias_users
  resources :conteudos
  resources :materias


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
  get '/capitulo1', to: 'static_pages#capitulo1'
  get '/capitulo2', to: 'static_pages#capitulo2'
  get '/capitulo3', to: 'static_pages#capitulo3'
  get '/capitulo4', to: 'static_pages#capitulo4'
  get '/capitulo5', to: 'static_pages#capitulo5'
  get '/capitulo6', to: 'static_pages#capitulo6'
  get '/capitulos', to: 'static_pages#capitulos'



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

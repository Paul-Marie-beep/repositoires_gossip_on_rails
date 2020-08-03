
Rails.application.routes.draw do
  
  get 'author/:user_entry', to: "author#show"

  get 'gossip/:user_entry', to: "gossip#show"

  get '/welcome/:user_entry', to: 'welcome#show'



  get '/team', to: 'team#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get'/contact', to: 'contact#show'
  

  root 'home#show'

end


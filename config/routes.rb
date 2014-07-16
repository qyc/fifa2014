Rails.application.routes.draw do
  
  get '/bet_set/index'
  get '/bet_set/email/:date/:type', :to => "bet_set#email"
  get '/bet_set/bet', :to => "bet_set#bet"
  post '/bet_set/submit', :to => "bet_set#submit"

  resources :teams

  resources :matches

  resources :players

  root :to => "bet_set#result"
end

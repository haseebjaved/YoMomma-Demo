MamaDayDeal::Application.routes.draw do
  
  root :to => 'deals#new'
  
  get "deals", controller: 'deals', action: 'index'
  
  get "locations/new", controller: "deals", action: "new"
  
  post "geolocations", controller: "deals", action: "create"
  
  get '/choices/:id', controller: "deals", action: "show"
  

end

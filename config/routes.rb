Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      resources :survivors
      # post "/survivor", to: "survivors#add_survivor"
      # get "/survivor", to: "survivors#get_survivor"
      # get "/survivors", to: "survivors#get_all_survivors"
      put "/survivor/:id/location", to: "survivors#update_location"
      post "/trades", to: "trades#create"
    end
  end
end

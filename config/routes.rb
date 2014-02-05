FitbitService::Application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      resources :activity, only: [:index]
    end
  end

end

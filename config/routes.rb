Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/high_scores/:game_title', to: "high_score#index"
  post '/high_scores', to: "high_score#create"
end

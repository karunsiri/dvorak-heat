Rails.application.routes.draw do
  get '/dvorak', to: "static#show"

  root to: "static#show"
end

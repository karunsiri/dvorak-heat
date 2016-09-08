Rails.application.routes.draw do
  get '/dvorak', to: "static#show"
  get '/qwerty', to: "static#qwerty"

  root to: "static#show"
end

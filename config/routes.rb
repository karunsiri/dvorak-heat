Rails.application.routes.draw do
  get '/dvorak', to: "static#show"
  get '/nerd_dvorak', to: "static#nerd_dvorak"
  get '/qwerty', to: "static#qwerty"

  root to: "static#show"
end

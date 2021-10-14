Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  get "/first_game" , controller: "games", action:"first_game"

  get "/first_letter" , controller: "games", action:"first_letter_name"

  get "/your_number" , controller:"games", action:"guess_number"
end

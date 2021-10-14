class GamesController < ApplicationController

  def first_game

    render json:{message: "hello!"}
    
  end

  def first_letter_name
   
    name = params["first_name"]

    if name.chars[0] == "a"
      
      render json:{message: "Hey, your name starts with the first letter of the alphabet!"}
    elsif
      
      render json:{message:"you have a cool name"}

    end

  end

  def guess_number

    num = params["your_number"]

    x = num.to_i


    if x == 19
      render json:{message: "Won! You got it. Awesome!"}
    elsif input > 19
      render json:{message: "Too High!"}
    else
      render json:{message: "Too Low!"}
    end
  
  end


end

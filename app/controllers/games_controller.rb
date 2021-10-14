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
    correct_answer = 40

    if x == correct_answer
      render json:{message: "You got it. Awesome!"}
    elsif x > correct_answer
      render json:{message: "Too High!"}
    else
      render json:{message: "Too Low!"}
    end
  
  end


  def sum_metod

    num1 = params["number1"]
    num2 = params["number2"]

    sum = num1.to_i + num2.to_i

    render json:{message: "the sum of numbers is #{sum}" }
    
  end



  def guess_method

    correct_ans = 20
    user_num = params["num"]
    n = user_num.to_i

    if n == correct_ans
      message = "You are cool:). You got correct number"

    elsif n > correct_ans
      message = "You guessed too high!"

    else
      message = "You guessed too low!"
    end

    render json:{result: message}
    
  end

  # def guess_number
  #   render json: {message: "hello"}
  # end



end

class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('a'..'z').to_a.sample }
  end

  def score
    @result = params[:letter]



    # if @result.included? && @result.english_word == "I am going to work right now!"
    #   @answer = ""
    # elsif @question.include?("?")
    #   @answer = "Silly question, get dressed and go to work!"
    # else
    #   @answer = "I don't care, get dressed and go to work!"
    # end
  end

  def included?(guess, grid)
    guess.chars.all? { |letter| guess.count(letter) <= grid.count(letter) }
  end
end



# Sorry but TEST can't be built out of ....
# Sorry but MIEL does not seem to be a valid English word...
# Congratulations! DUNE is a valid English word!

#  iteration split foreach

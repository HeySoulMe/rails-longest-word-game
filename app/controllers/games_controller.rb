class GamesController < ApplicationController
  def new
    @letters = []
    10.times { @letters << ('a'..'z').to_a.sample }
  end

  def score
    @letters = params[:letters]
    @word = params[:word]
    @word.split("")
    @letters.split("")
      if @word.include?(@letters)
        @result = "grats!"
      else
        @result = "nul!"
      end
    # render 'score'
  end
end

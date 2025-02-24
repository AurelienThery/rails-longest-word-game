require "json"
require "open-uri"

class GamesController < ApplicationController


  def new
    @letters = (0...10).map { ('A'..'Z').to_a[rand(26)] }
  end
  def score
    @url = "https://dictionary.lewagon.com/#{params[:word]}"
    @user_serialized = URI.parse(@url).read
    @user = JSON.parse(@user_serialized)
    raise
    @letters = params[:letters].split







      #pour chaque lettre dans lettres je regarde si la lettre existe
    # @question = params[:question]
    # if @question == 'I am going to work!'
    #   @answer = 'Great!'
    # elsif @question.include?('?')
    #   @answer = 'Silly question, get dressed and go to work!'
    # else
    #   @answer = 'I dont care, get dressed and go to work!'
    # end



  end
end

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:user_input]
    if @input.blank?
      @answer = "I can't hear you!"
    elsif @input =='I am going to work'
      @answer = 'Great!'
    elsif @input.ends_with?("?")
      @answer = 'Silly question, get dressed and got o work!'
    else
      @answer = 'I do not care, get dressed and go to work!'
    end
  end
end



class PagesController < ApplicationController

  def ask
  end

  def answer
    @your_question = params[:question]
    correct_answ = 'I am going to work'
    if @your_question == correct_answ
      @answer = 'Great!'
    elsif @your_question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

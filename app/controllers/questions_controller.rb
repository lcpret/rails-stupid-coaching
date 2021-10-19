class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question == 'I am going to work'
      @answer_user = 'Great!'
    elsif @question.end_with?('?')
      @answer_user = 'Silly question, get dressed and go to work'
    else
      @answer_user = "I don't care, get dressed and go to work!"
    end
  end
end

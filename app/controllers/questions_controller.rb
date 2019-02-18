class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = choose_answer
  end

  private

  def choose_answer
    if @question == 'I am going to work'
      return 'Great!'
    elsif @question.include? '?'
      return 'Silly question, get dressed and go to work!'
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end

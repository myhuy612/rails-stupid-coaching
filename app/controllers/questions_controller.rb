class QuestionsController < ApplicationController
  def ask
    # render '/questions_controller/ask.html.erb'
  end

  def answer
    # params collects the data from the request
    @question = params[:question] # canptures input from form

    @answer =
      if @question == "I am going to work"
        return 'Great!'
      elsif @question&.end_with?("?")
        "Silly question, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
      end
  end
end

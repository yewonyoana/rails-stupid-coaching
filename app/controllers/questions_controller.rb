class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @great = "Great!"
    @silly = "Silly question, get dressed and go to work!"
    @else = "I don't care, get dressed and go to work!"
    # {"question"=>"I am going to work"}
    if params[:question] == "I am going to work"
      @great
    elsif params[:question].include?("?")
      @silly
    else
      @else
    end
  end
end

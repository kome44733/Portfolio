class Public::HomesController < ApplicationController
  def top
    @professions = Profession.all
    @questions = Question.all
  end

  def about
  end
end

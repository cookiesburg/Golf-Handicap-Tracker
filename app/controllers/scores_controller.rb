class ScoresController < ApplicationController
  before_action :set_course

  def create
    @score = @course.scores.create(score_params)
    redirect_to @course
  end

  def destroy
    @score = @course.scores.find(params[:id])
      if @score.destroy
        flash[:success] = 'Score Erased'
      else
        flash[:error] = 'Score could not be deleted'
      end
      redirect_to @course
  end


  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def score_params
    params[:score].permit(:strokes)
  end
end

class ScoresController < ApplicationController
  before_action :set_course

  def create

    diff = (params[:score][:strokes].to_i) - @course.rating

    @score = @course.scores.create(score_params.merge(:diff => diff))
    redirect_to root_path
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
    params[:score].permit(:strokes, :diff)
  end
end

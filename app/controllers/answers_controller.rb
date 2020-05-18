class AnswersController < ApplicationController
  # after_action :redirect_course, only: [:create, :update, :destroy]

  def create
    @answer = authorize Answer.new(answer_params)
    @answer.user = current_user
    if @answer.save?
      redirect_to course_path(@answer.comment.course)
    else
      render :new
    end
  end

  def update
    @answer.update(answer_params)
    redirect_to course_path(@answer.comment.course)
  end

  def destroy
    @answer.destroy
    redirect_to course_path(@answer.comment.course)
  end

  private

  def find_answer
    @answer = authorize Answer.find(params[:id])
  end

  def answer_params
    params.require(:answer).permit(:message)
  end
end

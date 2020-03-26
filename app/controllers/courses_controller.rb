class CoursesController < ApplicationController

  def index
    @courses = policy_scope(Course)
    @first_course = policy_scope(Course).first
    @text_courses = policy_scope(Course).offset(1).first(7)
    @business_courses = policy_scope(Course).offset(8).first(10)
    @imbrication_courses = policy_scope(Course).last(7)
    # raise
  end

  def show
    @course =  authorize Course.find(params[:id])
    @courses = policy_scope(Course)
  end

  def create
  end

  def update
  end

  def destroy
  end
  private

  def params_course
    params.require(:course).permit(:title, :description, :slug)
  end

end

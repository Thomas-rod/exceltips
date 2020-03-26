class CoursesController < ApplicationController

  def index
    @courses = policy_scope(Course)
    @first_course = Course.first
    @text_courses = Course.offset(1).first(16)
    @business_courses = Course.last(11)
    # raise
  end

  def show

    @course = Course.find(params[:id])
    # @course = Course.find_by(params[:slug])
    @courses = policy_scope(Course)
  end


end

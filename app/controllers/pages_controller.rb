class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @course = Course.offset(1).first
    @courses = Course.all
  end
end

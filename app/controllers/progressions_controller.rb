class ProgressionsController < ApplicationController
  before_action :progressions_user, only: [:index, :show]
  before_action :progression_user, only: [:show, :update]

  def index
    @first_progression = @progressions.first
    @text_progressions = @progressions.offset(1).first(7)
    @business_progressions = @progressions.offset(8).first(10)
    @imbrication_progressions = @progressions.last(7)
    # raise
  end

  def show
    @progression.update_visite_status
  end

  private

  def params_course
    params.require(:progression).permit(:status)
  end

  def progressions_user
    @progressions = Progression.where(user: current_user).order(:id)
  end

  def progression_user
    @progression =  Progression.find(params[:id])
  end
end

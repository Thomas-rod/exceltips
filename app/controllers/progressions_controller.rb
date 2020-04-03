class ProgressionsController < ApplicationController
  before_action :progressions_user, only: [:index, :show]
  before_action :progression_user, only: [:show, :update]

  def index
    # @progressions = policy_scope(Progression)
    @first_progression = @progressions.first
    @text_progressions = @progressions.offset(1).first(7)
    @business_progressions = @progressions.offset(8).first(10)
    @imbrication_progressions = @progressions.last(7)
    # raise
  end

  def show
    @progression.update_visite_status
  end

  def status_update
    progression = Progression.find(params[:progression_id])
    authorize progression
    progression.update!(status: true)
    redirect_to progression_path(progression.id.to_i + 1)
  end

  private


  def params_progression
    params.require(:progression).permit(:status)
  end

  def progressions_user
    @progressions = policy_scope(Progression)
  end

  def progression_user
    @progression =  Progression.find(params[:id])
    authorize @progression
  end
end

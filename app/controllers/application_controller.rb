class ApplicationController < ActionController::Base
  include Pundit

  before_action :authenticate_user!
  protect_from_forgery with: :exception

  # Pundit: white-list approach.
  after_action :verify_authorized
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?, :raise => false

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  protected

  def after_sign_in_path_for(resource)
    progressions_path
  end

  def after_sign_up_path_for(resource)
    progressions_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

end

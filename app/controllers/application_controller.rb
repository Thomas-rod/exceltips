class ApplicationController < ActionController::Base
  include Pundit

  before_action :authenticate_user!
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # Pundit: white-list approach.
  # after_action :verify_authorized
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?, :raise => false

  # Uncomment when you *really understand* Pundit!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

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

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :first_name, :last_name) }
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

class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception

  before_action :authenticate_user!, unless: :pages_controller?

  after_action :verify_authorized, except:  :index, unless: :devise_or_pages_controller?
  after_action :verify_policy_scoped, only: :index, unless: :devise_or_pages_controller?

  rescue_from Pundit::NotAuthorizedError, with: :authenticate_userr_not_authorized

  private

  def devise_or_pages_controller?
    devise_controller? || pages_controller?
  end

  def pages_controller?
    controller_name == "pages"  # Brought by the `high_voltage` gem
  end

  def user_not_authorized
    flash[:error] = "You are not authorized to perform this action"
    redirect_to(root_path)
  end
end

class RegistrationsController < Devise::RegistrationsController
  # protected
  #   def after_sign_up_path_for(resource)
  #     signed_in_dashboard_services_path(resource)
  #   end

  #   def after_update_path_for(resource)
  #     signed_in_dashboard_services_path(resource)
  #   end

  private
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :photo, :photo_cache)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :photo, :photo_cache, :current_password)
  end
end

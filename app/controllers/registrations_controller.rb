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
    params.require(:user).permit(:email, :password, :password_confirmation, :photo, :photo_cache, :first_name, :last_name)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :photo, :photo_cache, :current_password, :first_name, :last_name)
  end
end

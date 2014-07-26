class RegistrationsController < Devise::RegistrationsController
  before_filter :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :age, :email, :password, :password_confirmation, :image, :remote_image_url)}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:name, :age, :email, :password, :password_confirmation,:image, :remote_image_url, :current_password)}
  end

private
   def after_sign_up_path_for(resource)
    '/profile/show'
   end
end
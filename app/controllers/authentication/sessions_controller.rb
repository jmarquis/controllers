# frozen_string_literal: true

class Authentication::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    @title = 'Modder sign in'
    super
  end

  # POST /resource/sign_in
  def create
    @title = 'Modder sign in'
    super
  end

  # DELETE /resource/sign_out
  def destroy
    @title = 'Signing out...'
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end

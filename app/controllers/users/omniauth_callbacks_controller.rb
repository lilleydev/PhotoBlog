class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    user = User.from_omniauth(request.env['omniauth.auth'])
    if user.persisted?
      sign_in_and_redirect root_path, notice: 'Signed In'

    else
      session['devise.user_attributes'] = user.attributes
      redirect_to new_user_registration_path
    end
  end
end

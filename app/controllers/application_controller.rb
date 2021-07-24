class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top, :about, :public_action]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_out_path_for(resource)
    root_path
  end

  def after_sign_in_path_for(resource)
    user_path(current_user)
  end


  # protected
private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email])
  end
#   devise利用の機能（ユーザ登録、ログイン認証など）が使われる場合、その前にconfigure_permitted_parametersが実行されます。
end


Refile.secret_key = '84b4c18447ac46c3beaa10169c71a91810994584ff5c4cb459f3dd84967666a7355fb59e4f3d1c4db3063a012fdf5e0068cd7942fc4977842d33435738202f14'
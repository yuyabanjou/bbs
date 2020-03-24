class ApplicationController < ActionController::Base

	before_action :authenticate_user!

	def after_sign_in_path_for(resource)
	  flash[:notice] = "ログインしました。"
	  items_path
	end

	def after_sign_out_path_for(resource)
	  root_path
	end

	# # deviseコントローラーにストロングパラメータを追加
	# before_action :configure_permitted_parameters, if: :devise_controller?

	# protected
	# def configure_permitted_parameters
	# # サインアップ時にnameのストロングパラメータを追加
	# 	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	# end

end

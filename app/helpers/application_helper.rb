module ApplicationHelper

	def logged_in
		session[:user_id]
	end

	def current_user_id
		session[:user_id].to_i
	end

end

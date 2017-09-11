module SessionsHelper

	def log_in(user)
		session[:user_id] = user.id
	end

	def current_user
		# X ||=Y => X = X || Y
		@current_user ||= User.find_by(id: session[:user_id]) 
	end

	def logged_in?
		!current_user.nil?
	end
end
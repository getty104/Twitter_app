class SessionsController < ApplicationController
	
	def new
	end

	def create
		user = User.find_by(account: params[:session][:account])

		if user && user.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      log_in user
      redirect_to user
  else
  	render :new 
  	flash.now[:danger] = 'Invalid account/password combination'

  end
end

def destroy
	log_out
	redirect_to root_url
end

end

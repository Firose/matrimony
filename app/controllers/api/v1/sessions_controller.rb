class Api::V1::SessionsController < Clearance::UsersController
	before_action :authenticate_via_token

	def create
		user = User.authenticate(params[:session][:email], params[:session][:password])

		if user&.valid_password?(params[:password])
			render json: user.as_json(only:[:email]), status: created
		else
			head(:unauthorized)
		end
	end


end

# @user = User.authenticate(params[:sessions][:email], params[:sessions][:password])
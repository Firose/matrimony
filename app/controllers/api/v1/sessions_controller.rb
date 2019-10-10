class Api::V1::SessionsController < Clearance::SessionsController
  
  def create
    @user = authenticate(params)
    return head(:unauthorized) if @user.blank?
    sign_in(@user) do |status|
      if status.success?
        render json: 'sucess'
      else
        head(:unauthorized)
      end
    end
  end

  def form_authenticity_token
  end

  def destory
    sign_out
  end


end

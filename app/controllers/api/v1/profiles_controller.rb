class Api::V1::ProfilesController < Clearance::UsersController
  before_action :set_profile, only: [:show, :update, :destroy]

  respond_to :json

  def index
    @profiles = Profile.all
    respond_with(@profiles)
  end

  def show
    respond_with(@profile)
  end

  def create
    @profiles = Profile.new(profile_params)
    if @profiles.save
      render json: { result: true, msg: ' The image is sucessfully uploaded!!'}, status: :created
    else
      render json: {result: false, user: @profiles.errors }, status: :unprocessable_entity
    end
  end

  def update
    @profile.update(profile_params)
    render json: 'updated'
  end

  def destroy
    @profile.destroy
    respond_with(@profile)
  end

  private
  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.permit(:email, :password, :name, {avatars: []})
  end
end

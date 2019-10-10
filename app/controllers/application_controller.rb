class ApplicationController < ActionController::API
  include Clearance::Controller
  include Clearance::Authentication

  before_action :authenticate_via_token
  before_action :require_login

  rescue_from CanCan::AccessDenied do |exception|
    msg = { errors: { status: "401", title: "Unauthorized", message: exception.message } }.to_json
    render json: msg
  end

  protected

  def authenticate_via_token

    return unless api_token
    user = Profile.find_by_api_token(api_token)
    sign_in user if user
    cookies.delete(:remember_token) # so non-browser clients don't act like browsers and persist sessions in cookies
  end

  private

  def api_token
    pattern = /^Bearer /
    header  = request.env['HTTP_AUTHORIZATION']
    header.gsub(pattern, '') if header && header.match(pattern)
  end
end

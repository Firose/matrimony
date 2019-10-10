class User < ApplicationRecord
  include Clearance::User

  load_and_authorize_resource
end
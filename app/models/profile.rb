class Profile < ApplicationRecord
  include Clearance::User
    mount_uploaders :avatars, AvatarUploader
end

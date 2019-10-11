class RemoveAvatarToProfiles < ActiveRecord::Migration[6.0]
  def change
  	remove_column :profiles, :avatar, :string
  end
end

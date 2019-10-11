class AddAvatarsToProfiles < ActiveRecord::Migration[6.0]
  def change
    remove_column :profiles, :avatars, :json
  end
end

class AddAvatarToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :avatar, :string
  end
end

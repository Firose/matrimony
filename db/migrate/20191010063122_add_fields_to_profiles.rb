class AddFieldsToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :encrypted_password, :string
    add_column :profiles, :confirmation_token, :string
    add_column :profiles, :remember_token, :string
  end
end

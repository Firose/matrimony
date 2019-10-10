class RemoveFieldsToProfiles < ActiveRecord::Migration[6.0]
  def change
  	remove_column :profiles, :password, :string
    remove_column :profiles, :confirm_password, :string
  end
end

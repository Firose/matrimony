class DropActiveStorageAttachments < ActiveRecord::Migration[6.0]
  def up
    drop_table :active_storage_attachments
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

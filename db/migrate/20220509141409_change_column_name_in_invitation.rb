class ChangeColumnNameInInvitation < ActiveRecord::Migration[7.0]
  def change
    rename_column :event_invitations, :user_invited_id, :invited_user_id
  end
end

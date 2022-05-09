class CreateEventInvitations < ActiveRecord::Migration[7.0]
  def change
    create_table :event_invitations do |t|
      t.integer :user_invited_id
      t.integer :invited_event_id

      t.timestamps
    end
  end
end

class AddIdToEventAttendings < ActiveRecord::Migration[7.0]
  def change
    add_column :event_attendings, :id, :primary_key
  end
end

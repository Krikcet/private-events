json.extract! event_invitation, :id, :user_invited_id, :invited_event_id, :created_at, :updated_at
json.url event_invitation_url(event_invitation, format: :json)

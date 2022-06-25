json.extract! event_invitation, :id, :invited_user_id, :invited_event_id, :created_at, :updated_at
json.url event_invitation_url(event_invitation, format: :json)

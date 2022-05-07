# == Schema Information
#
# Table name: event_attendings
#
#  attended_event_id :bigint           not null
#  event_attendee_id :bigint           not null
#
class EventAttending < ApplicationRecord
  belongs_to :event_attendee, class_name: 'User'
  belongs_to :attended_event, class_name: 'Event'
end

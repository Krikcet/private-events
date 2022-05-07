class EventAttendingsController < ApplicationController
  def create
    @event_attending = EventAttending.new(event_attending_params)
  end

  private

  def event_attending_params
    params.require(:event_attending).permit(:attended_event_id, :event_attendee_id)
  end
end

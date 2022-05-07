class EventAttendingsController < ApplicationController
  def create
    @event_attending = EventAttending.create(event_attending_params)
    redirect_to event_path(event_attending_params[:attended_event_id])
  end

  # DELETE
  def destroy
    @event_attending = EventAttending.find(params[:id])
    @event_attending.destroy_all
  end

  private

  def event_attending_params
    params.require(:event_attending).permit(:attended_event_id, :event_attendee_id)
  end
end

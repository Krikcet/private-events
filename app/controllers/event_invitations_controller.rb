class EventInvitationsController < ApplicationController
  before_action :set_event_invitation, only: %i[ show edit update destroy ]

  # GET /event_invitations or /event_invitations.json
  def index
    @event_invitations = EventInvitation.all
  end

  # GET /event_invitations/1 or /event_invitations/1.json
  def show
  end

  # GET /event_invitations/new
  def new
    @event_invitation = EventInvitation.new
  end

  # GET /event_invitations/1/edit
  def edit
  end

  # POST /event_invitations or /event_invitations.json
  def create
    @event_invitation = EventInvitation.new(event_invitation_params)

    respond_to do |format|
      if @event_invitation.save
        format.html { redirect_to event_url(event_invitation_params[:invited_event_id]), notice: "Event invitation was successfully created." }
        format.json { render :show, status: :created, location: @event_invitation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_invitations/1 or /event_invitations/1.json
  def update
    respond_to do |format|
      if @event_invitation.update(event_invitation_params)
        format.html { redirect_to event_invitation_url(@event_invitation), notice: "Event invitation was successfully updated." }
        format.json { render :show, status: :ok, location: @event_invitation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_invitations/1 or /event_invitations/1.json
  def destroy
    @event_invitation.destroy

    respond_to do |format|
      format.html { redirect_to event_invitations_url, notice: "Event invitation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_invitation
      @event_invitation = EventInvitation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_invitation_params
      params.require(:event_invitation).permit(:invited_user_id, :invited_event_id)
    end
end

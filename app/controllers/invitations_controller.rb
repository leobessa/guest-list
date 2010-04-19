class InvitationsController < ApplicationController
  def index
    @invitations = Invitation.all
  end
  
  def show
    @invitation = Invitation.find(params[:id])
  end
  
  def new
    @invitation = Invitation.new
  end
  
  def create
    @invitation = Invitation.new(params[:invitation])
    if @invitation.save
      flash[:notice] = "Successfully created invitation."
      redirect_to @invitation
    else
      render :action => 'new'
    end
  end
  
  def edit
    @invitation = Invitation.find(params[:id])
  end
  
  def update
    @invitation = Invitation.find(params[:id])
    if @invitation.update_attributes(params[:invitation])
      flash[:notice] = "Successfully updated invitation."
      redirect_to @invitation
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @invitation = Invitation.find(params[:id])
    @invitation.destroy
    flash[:notice] = "Successfully destroyed invitation."
    redirect_to invitations_url
  end
end
class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end
  
  def show
    @guest = Guest.find(params[:id])
  end
  
  def new
    @guest = Guest.new
  end
  
  def create
    @guest = Guest.new(params[:guest])
    if @guest.save
      flash[:notice] = "Successfully created guest."
      redirect_to @guest
    else
      render :action => 'new'
    end
  end
  
  def edit
    @guest = Guest.find(params[:id])
  end
  
  def update
    @guest = Guest.find(params[:id])
    if @guest.update_attributes(params[:guest])
      flash[:notice] = "Successfully updated guest."
      redirect_to @guest
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
    flash[:notice] = "Successfully destroyed guest."
    redirect_to guests_url
  end
end

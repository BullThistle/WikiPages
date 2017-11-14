class LocationsController < ApplicationController
  def new
    @business = Business.find(params[:business_id])
    @location = @business.locations.new
  end
  def create
    @business = Business.find(params[:business_id])
    @location = @business.locations.new(location_params)
    if @location.save
      redirect_to business_path(@location.business)
    else
      render :new
    end
  end
  def edit
    @business = Business.find(params[:business_id])
    @location = @business.locations.find(params[:id])
    render :edit
  end

  def update
    @business = Business.find(params[:business_id])
    @location = @business.locations.find(params[:id])
    if @location.update(location_params)
      redirect_to business_path(@location.business)
    else
      render :edit
    end
  end

  def destroy
    @business = Business.find(params[:business_id])
    @location = @business.locations.find(params[:id])
    @location.destroy
    redirect_to business_path(@business)
  end

private
  def location_params
    params.require(:location).permit(:name, :address, :phone, :website, :open, :close)
  end
end

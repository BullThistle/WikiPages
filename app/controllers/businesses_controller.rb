class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
    render :index
  end
  def show
    @business = Business.find(params[:id])
    render :show
  end
  def new
    @business = Business.new
    render :new
  end
  def create
    @business = Business.new(business_params)
    if @business.save
      redirect_to  businesses_path
    else
      render :new
    end
  end
  def edit
    @business = Business.find(params[:id])
    render :edit
  end
  def update
    @business= Business.find(params[:id])
    if @business.update(business_params)
      redirect_to businesses_path
    else
      render :edit
    end
  end
  def destroy
    @business = Business.find(params[:id])
    @business.destroy
    redirect_to businesses_path
  end

private
  def business_params
    params.require(:business).permit(:business)
  end
end

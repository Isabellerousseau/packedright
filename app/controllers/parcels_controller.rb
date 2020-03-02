# frozen_string_literal: true

class ParcelsController < ApplicationController

  def index
    @parcels = Parcel.all
  end

  def show
    @parcel = Parcel.find(params[:id])
  end

  def new
    @parcel = Parcel.new
  end

  def create
    @parcel = Parcel.new(parcel_params)
    @parcel.user = current_user
    if @parcel.save
      redirect_to parcel_path(@parcel)
    else
      render :new
    end
  end

  def edit
    @parcel = Parcel.find(params[:id])
  end

  def update
    @parcel = Parcel.find(params[:id])
    @parcel.update(parcel_params)
    redirect_to parcels_path
  end

  def destroy
    @parcel = Parcel.find(params[:id])
    @parcel.destroy
    redirect_to parcels_path
  end

  def my_products
    @parcels = current_user.parcels
  end

  private

  def parcel_params
    params.require(:parcel).permit(:name, :weight, :category, :fragile)
  end
end

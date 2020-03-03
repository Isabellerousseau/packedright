class DriversController < ApplicationController
  def index
    @drivers = policy_scope(Driver).order(created_at: :desc)

    @drivers = @drivers.geocoded
      set_markers
  end

  def show
    @driver = Driver.find(params[:id])
    authorize @driver
  end

  def new
    @driver = Driver.new
    authorize @driver
  end

  def create
    @driver = Driver.new(driver_params)
    @driver.user = current_user
    authorize @driver
    if @driver.save
      redirect_to driver_path(@driver)
    else
      render :new
    end
  end

  def edit
    @driver = Driver.find(params[:id])
    authorize @driver
  end

  def update
    @driver = Driver.find(params[:id])
    @driver.update(driver_params)
    authorize @driver
    redirect_to drivers_path
  end

  def destroy
    @driver = Driver.find(params[:id])
    authorize @driver
    @driver.destroy
    redirect_to parcels_path
  end

  def categories
    @category = params[:category].capitalize
    @drivers = Driver.where('category ILIKE ?', "%#{@category}%")
    @drivers = @drivers.geocoded #returns flats with coordinates
    set_markers
    authorize @drivers
  end

  private

  def driver_params
    params.require(:driver).permit(:name, :email, :phone_number, :password, :rating, :current_longitude, :current_latitude)
  end

  def set_markers
    @markers = @drivers.map do |driver|
      {
        lat: driver.current_latitude,
        lng: driver.current_longitude,
        infoWindow: render_to_string(partial: 'info_window', locals: { driver: driver })
      }
    end
  end
end

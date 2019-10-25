class PropertiesController < ApplicationController
  before_action :get_it_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    @property.stations.build
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path
    else
      render :new
    end
  end

  def show
    binding.pry
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to property_path
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice:"物件情報を削除しました！"
  end

  private

  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :notes, stations_attributes:[:route, :station_name, :distance])
  end

  def get_it_property
    @property = Property.find(params[:id])
  end

end

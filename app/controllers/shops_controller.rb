class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.create(shop_name: params[:shop][:shop_name], city: params[:shop][:city])
    if @shop.save
      redirect_to shops_path
    else
      render :new
    end
  end

  def destroy
    shop = Shop.find(params[:id])
    shop.destroy
    redirect_to shops_path
  end
end

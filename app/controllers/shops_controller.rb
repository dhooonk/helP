class ShopsController < ApplicationController
  def new
  end

  def create
    @shop = Shop.new
    @shop.name = params[:shop_name]
    @shop.address = params[:shop_address]
    @shop.save

    redirect_to '/shops/index'
  end

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:shop_id])
    @posts= Post.where(shop_id: params[:shop_id])
  end

  def destroy
    @shop = Shop.find(params[:shop_id])
    @shop.destroy
    redirect_to '/'
  end

  def edit
    @shop = Shop.find(params[:shop_id])
  end

  def update
    @shop = Shop.find(params[:shop_id])
    @shop.name = params[:shop_name]
    @shop.address = params[:shop_address]
    @shop.save
    redirect_to "/shops/show/#{params[:shop_id]}"
  end


end

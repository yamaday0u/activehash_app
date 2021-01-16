class AddressesController < ApplicationController
  def index
    @addresses = Address.order("created_at DESC")
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.valid?
      @address.save
      return redirect_to root_path
    else
      render "new"
    end
  end

  private
  def address_params
    params.require(:address).permit(:name, :prefecture_id)
  end
end
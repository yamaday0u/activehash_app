class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.valid?
      @address.save
      redirect_to :index
    else
      render :new
    end
  end
end

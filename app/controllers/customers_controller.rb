class CustomersController < ApplicationController
  before_action :set_customer, except: [:index, :create]

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.create(customer_params)

    if @customer.save
      redirect_to @customer, notice: "You have created new customer"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_customer
    @customer = Customer.find_by(id: params[:id])
  end

  def customer_params
    params.require(:customer).permit(:customer_name, :customer_address, :customer_state, :customer_postcode, :customer_phone)
  end
end

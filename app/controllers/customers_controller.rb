class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabet
    @customers = Customer.all.order("full_name ASC")
  end
end

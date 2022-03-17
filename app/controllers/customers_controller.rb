class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabet
    @customers = Customer.all.order("full_name ASC")
  end

  def no_email
    @customers = Customer.all.where("email = ?", "")
  end
end

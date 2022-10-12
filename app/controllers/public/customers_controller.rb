class Public::CustomerController < ApplicationController
  def show
    @customers = Customer.all
  end
end

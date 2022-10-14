class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
    @favorites = current_customer.favorites.all
  end
end

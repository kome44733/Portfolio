class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
    @favorites = current_customer.favorites.all
  end
  
  def edit
    @customer = current_customer
  end
  
  def withdrawal
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end
  
  def update
    @customer = current_customer
    if @customer.update(customer_params)
      redirect_to customer_path
    else
      render :edit
    end
  end

  def unsubscribe
  end
  
  private
  
  def customer_params
    params.require(:customer).permit(:nickname, :email)
  end
end

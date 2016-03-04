class OrdersController < ApplicationController

  def create
    ProcessOrder.enqueue(order_params[:order_number], run_at: 5.seconds.from_now)
    redirect_to action: :index
  end

  private

  def order_params
    params.require(:order).permit(:order_number)
  end

  def order
    Order.new
  end
  helper_method :order

  def orders
    Order.all
  end
  helper_method :orders
end

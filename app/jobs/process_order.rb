class ProcessOrder < Que::Job
  def run(order_number)
    ActiveRecord::Base.transaction do
      order = Order.new
      order.assign_attributes({order_number: order_number})
      order.save

      destroy
    end
  end
end

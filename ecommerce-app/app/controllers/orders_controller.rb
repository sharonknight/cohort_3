class OrdersController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    quantity = params[:quantity].to_i
    tax = product.price * quantity * 0.09
    subtotal = product.price * quantity
    total = subtotal + tax
    Order.create(:quantity => quantity, :user_id => current_user.id, :product_id => product.id, :subtotal => subtotal, :tax => tax, :total => total)
    flash[:success] = "Thanks for shopping!"
    redirect_to "/products"
  end
end

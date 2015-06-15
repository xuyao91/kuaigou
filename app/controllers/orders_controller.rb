class OrdersController < ApplicationController
  require 'pp'

  def create
    @order = Order.new(params[:order])
    if @order.save
      render :inline => "下单成功.<%= link_to '返回请点击这里...',home_index_path %>"
    else
      render :inline => "下单出现错误.<%= link_to '返回请点击这里...',home_index_path %>"
    end
  end

end
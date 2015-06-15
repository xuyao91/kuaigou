class Admin::OrdersController < Admin::BaseController
  require 'pp'

  def index
    @search = Order.order("status asc,id desc").search(params[:search])
    @orders = @search.page(params[:page])
  end

  def update
    pp params,'=============update'
    @order = Order.find_by_id(params[:id])
    return redirect_to admin_orders_path, notice: '订单不存在' unless @order
    @order.update_attributes(status: params[:status], update_author: @current_user.login)
    if @order.errors.blank?
      redirect_to admin_orders_path, notice: '订单更新成功'
    else
      redirect_to admin_orders_path, notice: '订单更新失败'
    end
  end

end
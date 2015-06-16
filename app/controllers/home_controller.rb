class HomeController < ApplicationController

  def index
    @order = Order.new(city: 1)
  end

end
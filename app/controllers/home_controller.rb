class HomeController < ApplicationController
  require 'pp'

  def index
    @order = Order.new(city: 1)
  end

end
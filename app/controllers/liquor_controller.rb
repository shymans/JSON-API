require 'open-uri'

class LiquorController < ApplicationController
  helper :liquor

  def index
  end

  def show
    @product = JSON.parse(open("http://lcboapi.com/products/#{params[:id]}").read)
  end
end

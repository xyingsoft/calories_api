class Api::V1::FoodsController < ApplicationController
  def index
    render json: Food.all
  end

  def show
  end
end

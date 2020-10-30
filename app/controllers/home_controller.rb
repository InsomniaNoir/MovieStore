class HomeController < ApplicationController
  def index
    @directors = Director.all

    render json: @directors
  end

end
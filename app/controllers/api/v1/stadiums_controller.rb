class Api::V1::StadiumsController < ApplicationController

  def index
    @stadiums = Stadium.all
  end

end

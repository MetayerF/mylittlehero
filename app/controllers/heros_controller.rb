class HerosController < ApplicationController

  def index
    @heros = Hero.all
  end



end

class HerosController < ApplicationController
  before_action :set_hero, only: [:show]

  def index
    @heros = policy_scope(Hero)
  end

  def show
  end

  private
  def set_hero
     @hero = Hero.find(params[:id])
     authorize @hero
  end

end

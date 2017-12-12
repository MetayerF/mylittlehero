class RelativesController < ApplicationController
  before_action :get_hero, only: [:index, :new]
  def index
    @relatives = policy_scope(@hero.relatives)
  end

  def show
    @relative = Relative.find(params[:id])
    authorize @relative
  end

  def new
    @relative = Relative.new(hero: @hero)
    authorize @relative
  end

  private

  def get_hero
    @hero = Hero.find(params[:hero_id])
  end
end


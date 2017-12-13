class RelativesController < ApplicationController
  before_action :get_hero

  def index
    @relatives = policy_scope(@hero.relatives)
  end

  def show
    @relative = @hero.relatives.find(params[:id])
    @comments_count = @relative.user.comments.joins(:adventure).where(adventures: { hero_id: @hero.id }).count
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


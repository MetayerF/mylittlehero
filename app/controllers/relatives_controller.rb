class RelativesController < ApplicationController

  def index
    @hero = Hero.find(params[:hero_id])
    @relatives = policy_scope(@hero.relatives)
  end

  def show
    @relative = Relative.find(params[:id])
    authorize @relative
  end
#   def create
#     @relative = Relative.new(relative_params)
#   end

# private
#   def relative_params
#     params.require(:relative).permit(:email)
#   end
end


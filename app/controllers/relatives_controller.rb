class RelativesController < ApplicationController
  
  skip_before_action :authenticate_user!, only: [:invitation]

  before_action :get_hero
  before_action :get_relative_by_token, only: [:invitation, :accept, :decline]


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

  def create
    @relative = @hero.relatives.new(relative_params)
    @relative.invitation_status = "pending"
    @relative.inviter = current_user
    @relative.invitation_token = SecureRandom.hex(10)
    authorize @relative

    if @relative.save
      RelativeMailer.send_invitation(@relative).deliver_now
      flash[:notice] = "Votre invitation a bien été envoyée à #{@relative.email}"
      redirect_to hero_relatives_path
    else
      render :new
    end
  end

  def invitation
  end

  def accept
    @relative.update!(invitation_status: 'accepted', user: current_user, invitation_token: nil )
    redirect_to hero_path(@relative.hero)
  end

  private

  def get_hero
    @hero = Hero.find(params[:hero_id])
  end

  def get_relative_by_token
    @relative = @hero.relatives.where(invitation_status: 'pending').find_by_invitation_token(params[:id])
    authorize @relative
  end

  def relative_params
    params.require(:relative).permit(:family_link, :mother_side, :role, :email)
  end
end


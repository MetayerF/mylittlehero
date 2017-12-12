class CommentsController < ApplicationController
  skip_after_action :verify_authorized, only: :create

  def create
    @comment = Comment.new(comment_params)
    @adventure = Adventure.find(params[:adventure_id])
    @comment.user = current_user
    @comment.adventure = @adventure
    @hero = Hero.find(params[:id])
    if @comment.save
    flash[:notice] = "Votre commentaire à bien été publié !"
    else
    flash[:alert] = "Votre commentaire n'a pas pu être publié."
    end
    redirect_to hero_adventure_path(@hero, @adventure)
  end

private
    def get_relative
      @relative = Relative.find(params[:user_id])
    end

    def comment_params
      params.require(:comment).permit(:content)
    end
end

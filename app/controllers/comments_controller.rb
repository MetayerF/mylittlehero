class CommentsController < ApplicationController
  skip_after_action :verify_authorized, only: [:create, :destroy]

  def create
    @comment = Comment.new(comment_params)
    @adventure = Adventure.find(params[:adventure_id])
    @comment.user = current_user
    @comment.adventure = @adventure
    @hero = @adventure.hero
    if @comment.save
    flash[:notice] = "Votre commentaire à bien été publié !"
    else
    flash[:alert] = "Votre commentaire n'a pas pu être publié."
    end
    redirect_to hero_adventures_path(@hero, @adventure)
  end

  def destroy
    @adventure = Adventure.find(params[:adventure_id])
    @hero = @adventure.hero
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to hero_adventures_path(@hero, @adventure)
    flash[:notice] = "Votre commentaire à bien été supprimé."
  end

private
    def get_relative
      @relative = Relative.find(params[:user_id])
    end

    def comment_params
      params.require(:comment).permit(:content)
    end
end

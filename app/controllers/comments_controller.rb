class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params_comment)
    authorize @comment
    @comment.user = User.find(params[:user])
    @comment.course = Progression.find(params[:progression]).course
    if @comment.save
      redirect_to progression_path(Progression.find(params[:progression])), notice: "Votre commentaire a bien été posté"
    else
      redirect_to progression_path(Progression.find(params[:progression])), alert: "#{@comment.errors.messages[:message].first}"
    end
  end

  private

  def params_comment
    params.require(:comment).permit(:user, :course, :message)

  end
end

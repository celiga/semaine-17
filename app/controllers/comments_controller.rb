class CommentsController < ApplicationController
  def create
    Comment.create author: params[:author], content: params[:content], post_id: params[:id]
    redirect_to "/posts/#{params[:id]}"
  end
end
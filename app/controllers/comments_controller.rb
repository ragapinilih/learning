class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comments = @post.comments.create(params[:comments].permit(:commenter, :body))
		redirect_to post_path(@post)
	end
end

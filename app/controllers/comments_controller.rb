class CommentsController < ApplicationController
    def create
        @blog = Blog.find(params[:blog_id])
        @blog.comments.create(content: params[:comment][:content], blog_id: params[:blog_id])
        redirect_to blog_path(params[:blog_id])
    end
    
    def edit
        @blog = Blog.find(params[:blog_id])
        @comment = Comment.find(params[:id])
    end
    
    def update
        @comment = Comment.find(params[:id])
        @comment.update(content: params[:comment][:content])
        redirect_to blog_path(params[:blog_id])
    end
    
    def destroy
        Comment.destroy(params[:id])
        redirect_to blog_path(params[:blog_id])
    end
end

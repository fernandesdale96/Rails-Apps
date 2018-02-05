class PostsController < ApplicationController
  def create
    u = User.find_by(id: params[:user_id])
    @post = u.posts.new(content: params[:content])

    render 'posts/create.jbuilder'


  end

  def list
    @list = Post.all

    render 'posts/list.jbuilder'

  end


  def modify
    @post_modify = Post.find(params[:id])
    @post_modify.update(content: params[:content])
    render 'posts/modify.jbuilder'

  end


  def destroy
    @post_destroy = Post.find(params[:id])

    if @post_destroy and @post_destroy.destroy
      render json:{success: true}
    else
      render json:{success: false}
    end
  end

end

class PostsController < ApplicationController
  def index #index usually shows a list
    @posts = Post.all
    @title = "The Dead Writer's Delorean"
    @subheading = "A blogging medium for your favorite authors who have already kicked the bucket."
  end

  def show_first
    @post = Post.all.first
    @title = @post.title
    @subheading = @post.summary
  end

  def show
    @post = Post.find(params[:id].to_i)
    @title = @post.title
    @subheading = @post.summary
  end

  def by_author
    @posts = Post.posts_by_author(params[:last_name].capitalize)
    @title = "Posts by #{@posts[0].author.show_name}"
  end

end

class PostsController < AuthenticatedController
  skip_before_action :authenticate_user!, only: :show

  def index
    @posts = Post.all
    @post = current_user.posts.build
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path, notice: "Post was created!"
    else
      @posts = Post.all
      render :index
    end
  end

  def export
    @post = current_user.posts.find(params[:id])
  end

  def destroy
    current_user.posts.find(params[:id]).destroy
    redirect_to posts_path, notice: "Post was removed."
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end

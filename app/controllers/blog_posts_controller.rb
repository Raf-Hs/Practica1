class BlogPostsController < ApplicationController
  before_action :set_blog_post, except: [:index,:new,:create]
  def index

      #@blog_posts= BlogPost.all
      @blog_posts = BlogPost.paginate(page: params[:page], per_page: 5)
  end

  def show
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      redirect_to @blog_post
    else
      render :new , status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
      if @blog_post.update(blog_post_params)
          redirect_to @blog_post
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    @blog_post.destroy
    redirect_to root_path
  end

  def search
    @query = params[:query]
    @blog_posts = BlogPost.where("title LIKE ? OR body LIKE ?", "%#{@query}%", "%#{@query}%")
  end


  private
  def blog_post_params
    params.require(:blog_post).permit(:title,:content)
  end

  def set_blog_post
    @blog_post = BlogPost.find(params[:id])
  rescue ActiveRecord::RecordNotFound
      redirect_to root_path
  end

  def rate
    @blog_post = BlogPost.find(params[:blog_post_id])
    new_rating = params[:rating].to_f

    if @blog_post.update(average_rating: new_rating)
      redirect_to @blog_post, notice: 'Publicación calificada con éxito.'
    else
      render 'show' # o cualquier otra vista donde desees mostrar la publicación
    end
  end

end

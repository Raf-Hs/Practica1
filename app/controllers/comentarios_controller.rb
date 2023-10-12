class ComentariosController < ApplicationController
  def create
    @blog_post = BlogPost.find(params[:blog_post_id])
    @comentario = @blog_post.comentarios.new(comentario_params)

    if @comentario.save
      # Manejar la creación exitosa del comentario
      redirect_to @blog_post, notice: "Comentario creado exitosamente."
    else
      # Manejar errores en la creación del comentario
      flash.now[:alert] = "No se pudo crear el comentario debido a errores en el formulario."
      render 'blog_posts/show'
    end
  end

  def edit
    @comentario = Comentario.find(params[:id])
  end

  private

  def comentario_params
    params.require(:comentario).permit(:contenido, :correo)
  end

end

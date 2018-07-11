class PostagensControllee < ApplicationController

  def create
    @postagem = current_usuario.postagens.build(postagem_params)
  end

  def destroy
    @postagem.destroy
  end

  private

  def current_usuario
    @postagem = current_usuario.postagem.find_by(id: params[:id])
    redirect_to index_path if @postagem.nil?
  end

  def topico_params
    @postagem = topico.postagens.find_by(id: params(:id))
  end

end
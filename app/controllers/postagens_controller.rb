class PostagensControllee < ApplicationController

  def new
    @postagem = Postagem.new
  end

  def create
    @postagem.usuario_id = Usuario.find(params[:id])
    @postagem.topico_id = Topico.find(params[:id])
    @postagem = Postagem.new(topico_params)
    if @postagem.save
      redirect_back(fallback_location: root_path)
    else
      render 'usuarios/index'
    end
  end

  def destroy
    @postagem = Postagem.find(params[:id])
    @postagem.destroy
  end

  private

  def topico_params
    params.require(:postagem).permit(:descricao)
  end

end
class MensagensController < ApplicationController

  def new
    @mensagem = Mensagem.new
  end

  def create
    @mensagem.usuario = Usuario.find(params[:id])
    @mensagem.conversa = Conversa.find(params[:id])
    @mensagem = Mensagem.new(mensagem_params)
    if @mensagem.save
      redirect_back(fallback_location: root_path)
    else
      render 'usuarios/index'
    end
  end

  private

  def mensagem_params
    params.require(:mensagem).permit(:descricao)
  end

end
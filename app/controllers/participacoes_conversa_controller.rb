class ParticipacoesConversaController < ApplicationController

  def new
    @part_conversa = ParticipacaoConversa.new
  end

  def create
    @part_conversa.usuario = Usuario.find(params[:id])
    @part_conversa.conversa = Conversa.find(params[:id])
    if @part_conversa.save
      redirect_back(fallback_location: root_path)
    else
      render 'usuarios/index'
    end
  end

  def destroy
    @part_conversa = ParticipacaoConversa.find(params[:id])
    @part_conversa.destroy
  end

end
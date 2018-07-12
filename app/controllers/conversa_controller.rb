class ConversaController < ApplicationController

  def new
    @conversa = Conversa.new
  end

  def create
    @conversa.usuarios = Usuario.find(params[:id])
    @conversa.participacao_conversas = ParticipacaoConversa.find(params[:id])
    if @conversa.save
      redirect_back(fallback_location: root_path)
    else
      flash[:notice] = "Esta conversa não pode ser criada!"
      render 'usuarios/index'
    end
  end

end
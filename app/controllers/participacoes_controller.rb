class ParticipacoesController < ApplicationController

  def new
    @participacao = Participacao.new
  end

  def create
    @participacao.turma = Turma.find(params[:id])
    @participacao.usuarios = Usuario.find(params[:id])
    @participacao = Participacao.new(participacao_params)
    if @participacao.save
      flash[:success] = "Participação registrada com sucesso"
      redirect_back(fallback_location: root_path)
    else
      render 'usuarios/index'
    end
  end

  def show
    @participacao = Participacao.find(params[:id])
  end

  def destroy
    @participacao = Participacao.find(params[:id])
    @participacao.destroy
  end

  private

  def participacao_params
    params.require(:participacao).permit(:tipo)
  end

end
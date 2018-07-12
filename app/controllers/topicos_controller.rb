class TopicosController < ApplicationController

  def new
    @topico = Topico.new
  end

  def create
    @topico.usuario = current_user
    @topico = Topico.new(topico_params)
    if @topico.save
      redirect_back(fallback_location: root_path)
    else
      render 'usuarios/index'
    end
  end

  def destroy
    @topico = Topico.find(params[:id])
    @topico.destroy
  end

  private

  def topico_params
    params.require(:topico).permit(:titulo, :descricao)
  end

end
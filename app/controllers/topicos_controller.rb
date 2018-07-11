class TopicosController < ApplicationController

  def create
    @topico = current_usuario.topicos.build(topico_params)
  end

  def destroy
    @topico.destroy
  end

  private

  def current_usuario
    @topico = current_usuario.topicos.find_by(id: params[:id])
    redirect_to index_path if @topico.nil?
  end

  def topico_params
    @topico = current_usuario.topicos.find_by(id: params(:id))
  end

end
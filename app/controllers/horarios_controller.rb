class HorariosController < ApplicationController

  def new
    @horario = Horario.new
  end

  def create
    @horario = Horario.new(horario_params)
    @horario.turma = Turma.find(params[:turma_id])
    if @horario.save
      flash[:success] = "Horario salvo com sucesso!!!"
      redirect_back(fallback_location: root_path) #por enquanto o caminho será o root, mas mudar qnd houver o path correto
    else
      render 'turma/horario' # acredito que seja este o possivel path
    end
  end

  def update
    @horario = Horario.find(params[:id])
    @horario.update(horario_params)
  end

  def destroy
    @horario = Horario.find(params[:id])
    @horario.destroy
  end

  private

  def horario_params
    params.require(:horario).permit(:dia_semana, :hora_inicio, :hora_fim)
  end

end
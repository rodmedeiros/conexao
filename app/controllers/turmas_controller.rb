class TurmasControler < ApplicationController

  def create
    @turma = Turma.new(turma_params)
    if @turma.save
      flash[:success] = "Turma criada com sucesso!"
      redirect_back(fallback_location: root_path)
    else
      render 'usuarios/index'
    end
  end

  def index
    @turma = Turma.all
  end

  def edit
  end

  def uptade
    @turma = Turma.find(params[:id])
    @turma.update(turma_params)
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @turma = Turma.find(params[:id])
    @turma.destroy
  end

  def show
    @turma = Turma.find(params[:id])
  end

  private

  def turma_params
    params.require(:user).permit(:codigo_turma, :codigo_disciplina, :discilpina, :ano, :semestre )
  end

end
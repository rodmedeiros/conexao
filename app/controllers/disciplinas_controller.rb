class DisciplinasController < ApplicationController
  def index
    if !usuario_atual.nil?
      @turmas = usuario_atual.turmas
    else
      redirect_to root_path
    end
  end
end

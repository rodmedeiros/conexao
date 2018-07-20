class DisciplinasController < ApplicationController
  def index
    @turmas = usuario_logado.turmas
  end
end

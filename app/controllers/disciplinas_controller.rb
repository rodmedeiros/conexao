class DisciplinasController < ApplicationController
  def index
    @disciplinas = []
    @disciplinas << {
      nome: 'Introdução a Computação Móvel',
      semestre: '2018.2',
      professor: 'Flávia',
      situacao: 'inscrito'
    }
    @disciplinas << {
      nome: 'Banco de dados não convencionais',
      semestre: '2018.2',
      professor: 'Victor',
      situacao: 'pendente'
    }
    @disciplinas << {
      nome: 'Cálculo II-a',
      semestre: '2018.2',
      professor: 'Augusto',
      situacao: 'inscrito'
    }
  end
end

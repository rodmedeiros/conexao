class DisciplinasController < ApplicationController
  def index
    @disciplinas = []
    @disciplinas << {
      nome: 'Introdução a Computação Móvel',
      semestre: '2018.2',
      professor: 'Flávia',
      situacao: 'inscrito',
      turma: 'AA'
    }
    @disciplinas << {
      nome: 'Banco de dados não convencionais',
      semestre: '2018.2',
      professor: 'Victor',
      situacao: 'pendente',
      turma: 'BB'
    }
    @disciplinas << {
      nome: 'Cálculo II-a',
      semestre: '2018.2',
      professor: 'Augusto',
      situacao: 'inscrito',
      turma: 'A1'
    }
  end
end

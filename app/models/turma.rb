class Turma < ApplicationRecord
  has_many :participacoes, foreign_key: 'turma_id', class_name: 'Participacao'
  has_many :horarios

  validates :codigo_turma, :codigo_disciplina, :disciplina, :ano, :semestre, presence: true

  def alunos
    participantes(:aluno)
  end

  def professores
    participantes(:professor)
  end

  private
    def participantes(tipo)
      Usuario
      .joins(:participacoes)
      .where(participacoes: { tipo: tipo, turma_id: self.id })
    end
end

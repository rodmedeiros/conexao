class Turma < ApplicationRecord
  has_many :participacoes, foreign_key: 'turma_id', class_name: 'Participacao'
  has_many :horarios
  validates :codigo_turma, :codigo_disciplina, :disciplina, :ano, :semestre, presence: true

  # verificar unicidade dado um mesmo ano e semestre e código de turma

  # metodo para achar os professores que lecionam na turma
end

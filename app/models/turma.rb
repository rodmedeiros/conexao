class Turma < ApplicationRecord
  has_many :participacaos
  has_many :horarios
  validates :codigo_turma, :codigo_disciplina, :disciplina, :ano, :semestre, presence: true
end

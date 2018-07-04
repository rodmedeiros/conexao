class Turma < ApplicationRecord
  has_many :participacaos
  has_many :horarios
  validates :codigo_turma, :codigo_discliplina, :disciplina, :ano, :semestre, presence: true
end

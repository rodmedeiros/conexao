class Turma < ApplicationRecord
  #has_many :participacoes
  has_many :horario
  has_many :topico
  validates :codigo, :disciplina, :semestre, presence: true
end

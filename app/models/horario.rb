class Horario < ApplicationRecord
  belongs_to :turma
  validates :dia_semana, :hora_inicio, :hora_fim, presence: true
end

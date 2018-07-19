class Participacao < ApplicationRecord
  self.table_name = 'participacoes'
  belongs_to :turma
  belongs_to :usuario

  validates :tipo, presence: true
end

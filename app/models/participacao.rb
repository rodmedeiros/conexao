class Participacao < ApplicationRecord
  self.table_name = 'participacoes'
  belongs_to :turma
  belongs_to :usuarios

  validates :tipo, presence: true
end
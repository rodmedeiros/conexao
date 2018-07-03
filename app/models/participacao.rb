class Participacao < ApplicationRecord
  belongs_to :turma
  belongs_to :usuarios

  validates :tipo, presence: true
end
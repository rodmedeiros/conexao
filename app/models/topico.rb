class Topico < ApplicationRecord
  belongs_to :usuario
  belongs_to :turma
  has_many :postagems
  validates :titulo, presence: true, length: {maximum: 155}
  validates :descricao, presence: true, length: {maximum: 2000}

  # scope para retornar os topicos dependendo do tipo escolhido
end

class Topico < ApplicationRecord
  belongs_to :turma
  has_many :postagem
  validates :titulo, presence: true, length: {maximum: 60}
  validates :descricao, presence: true, length: {maximum: 155}
end

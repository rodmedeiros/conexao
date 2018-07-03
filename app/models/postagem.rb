class Postagem < ApplicationRecord
  belongs_to :usuario
  belongs_to :topico
  validates :descricao, presence: true, length: {maximum: 1000}
end

class Postagem < ApplicationRecord
  #belongs_to :usuario
  validates :descricao, presence: true, length: {maximum: 155}
end

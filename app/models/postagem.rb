class Postagem < ApplicationRecord
  self.table_name = 'postagens'
  belongs_to :usuario
  belongs_to :topico
  validates :descricao, presence: true, length: {maximum: 1000}
end

class Mensagem < ApplicationRecord
  self.table_name = 'participacoes'
  belongs_to :usuario
  belongs_to :conversa

  validates :descricao, presence: true
end

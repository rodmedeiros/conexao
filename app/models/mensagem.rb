class Mensagem < ApplicationRecord
  self.table_name = 'mensagens'
  belongs_to :usuario
  belongs_to :conversa

  validates :descricao, presence: true
end

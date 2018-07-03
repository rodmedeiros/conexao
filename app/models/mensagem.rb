class Mensagem < ApplicationRecord
  belongs_to :usuario
  belongs_to :conversa
end

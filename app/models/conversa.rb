class Conversa < ApplicationRecord
  has_many :mensagens
  has_many :usuarios, through: :participacao_conversa
  has_many :participacao_conversas
  validates :controle_conversa, presence: true
end

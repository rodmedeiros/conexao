class Conversa < ApplicationRecord
  belongs_to :usuario
  has_many :participacao_conversas
  validates :controle_conversa, presence: true
end

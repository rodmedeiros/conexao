class Usuario < ApplicationRecord
  has_many :topicos
  has_many :postagens
  has_many :participacao_conversas

  validates :iduff, :tipo, :nome, presence: true
end

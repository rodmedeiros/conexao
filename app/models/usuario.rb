class Usuario < ApplicationRecord
  has_many :topicos
  has_many :postagems
  has_many :participacao_conversas
  has_secure_password

  validates :iduff, :tipo, :nome, presence: true
  validates :iduff, :cpf, uniqueness: true
end

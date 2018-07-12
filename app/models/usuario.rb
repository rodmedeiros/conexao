class Usuario < ApplicationRecord
  has_secure_password
  
  has_many :topicos
  has_many :postagems
  has_many :participacao_conversas

  validates :iduff, :tipo, :nome, presence: true
  validates :iduff, :cpf, uniqueness: true

end

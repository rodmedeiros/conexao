class Usuario < ApplicationRecord
  has_many :topicos
  has_many :postagems

  validates :iduff, :tipo, :nome, presence: true
end

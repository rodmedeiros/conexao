class Usuario < ApplicationRecord
  has_secure_password

  has_many :topicos
  has_many :participacao_conversas
  has_many :postagens, foreign_key: 'usuario_id', class_name: 'Postagem'
  has_many :participacoes, foreign_key: 'usuario_id', class_name: 'Participacao'
  has_many :turmas, through: :participacoes

  validates :iduff, :tipo, :nome, presence: true
  validates :iduff, :cpf, uniqueness: true

end

class CreateParticipacaoConversas < ActiveRecord::Migration[5.2]
  def change
    create_table :participacao_conversas do |t|
      t.references :usuario, foreign_key: true
      t.references :conversa, foreign_key: true

      t.timestamps
    end
  end
end

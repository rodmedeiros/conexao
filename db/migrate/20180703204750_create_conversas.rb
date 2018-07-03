class CreateConversas < ActiveRecord::Migration[5.2]
  def change
    create_table :conversas do |t|
      t.references :usuario, foreign_key: true
      t.string controle_conversa

      t.timestamps
    end
    add_index :conversas, [:usuario_id, :controle_conversa], unique: true
  end
end

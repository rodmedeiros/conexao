class CreateMensagems < ActiveRecord::Migration[5.2]
  def change
    create_table :mensagems do |t|
      t.references :usuario, foreign_key: true
      t.references :conversa, foreign_key: true
      t.string :descricao

      t.timestamps
    end
  end
end

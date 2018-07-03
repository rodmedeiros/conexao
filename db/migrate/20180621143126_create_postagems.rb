class CreatePostagems < ActiveRecord::Migration[5.2]
  def change
    create_table :postagems do |t|
      t.string :descricao
      t.references :usuario, foreign_key: true
      t.references :topico, foreign_key: true
      
      t.timestamps
    end
  end
end

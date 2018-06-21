class CreateTopicos < ActiveRecord::Migration[5.2]
  def change
    create_table :topicos do |t|
      t.string :titulo
      t.string :descricao
      t.timestamps
    end
  end
end

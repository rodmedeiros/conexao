class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :iduff
      t.string :tipo

      t.timestamps
    end
    add_index :usuarios, [:iduff], unique: true
  end
end

class CreateTurmas < ActiveRecord::Migration[5.2]
  def change
    create_table :turmas do |t|
      t.string :codigo
      t.string :disciplina
      t.integer :semestre
      t.timestamps
    end
    add_index :turmas, :codigo
    add_index :turmas, :disciplina
    add_index :turmas, :semestre
    add_index :turmas, [:codigo,:disciplina,:semestre], unique:true
  end
end


class CreateTurmas < ActiveRecord::Migration[5.2]
  def change
    create_table :turmas do |t|
      t.string :codigo_turma
      t.string :codigo_displina
      t.string :disciplina
      t.integer :ano
      t.integer :semestre
      t.timestamps
    end
      add_index :turmas, [:codigo_turma, :codigo_displina,:disciplina, :ano, :semestre], unique:true
  end
end


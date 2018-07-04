class AlterDisciplinaOnTurmas < ActiveRecord::Migration[5.2]
  def change
    rename_index [:turmas, :codigo_turma, :codigo_displina,:disciplina, :ano, :semestre], [:codigo_turma, :codigo_disciplina,:disciplina, :ano, :semestre], unique: true
    remove_column :turmas, :codigo_displina, :string
    add_column :turmas, :codigo_disciplina, :string
  end
end

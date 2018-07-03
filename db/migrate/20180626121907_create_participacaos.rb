class CreateParticipacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :participacaos do |t|
      t.references :users, foreign_key: true
      t.references :turma, foreign_key: true
      t.string :tipo #O aluno só pode ter um tipo de participação na turma? se sim: id_user deve ser chave única

      t.timestamps
    end
  end
end

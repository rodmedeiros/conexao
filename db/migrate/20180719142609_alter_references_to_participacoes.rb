class AlterReferencesToParticipacoes < ActiveRecord::Migration[5.2]
  def up
    remove_reference :participacoes, :users, foreign_key: true
    add_reference :participacoes, :usuario, index: true, foreign_key: true
  end

  def down
    remove_reference :participacoes, :usuario, foreign_key: true
    add_reference :participacoes, :users, foreign_key: true
  end
end

class AlterTableNameParticipacoes < ActiveRecord::Migration[5.2]
  def self.up
    rename_table :participacaos, :participacoes
  end

  def self.down
    rename_table :participacoes, :participacaos
  end
end

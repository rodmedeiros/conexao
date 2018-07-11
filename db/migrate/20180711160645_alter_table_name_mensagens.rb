class AlterTableNameMensagens < ActiveRecord::Migration[5.2]
  def self.up
    rename_table :mensagems, :mensagens
  end

  def self.down
    rename_table :mensagens, :mensagems
  end
end

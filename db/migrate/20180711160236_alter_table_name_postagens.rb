class AlterTableNamePostagens < ActiveRecord::Migration[5.2]

  def self.up
    rename_table :postagems, :postagens
  end

  def self.down
    rename_table :postagens, :postagems
  end

end
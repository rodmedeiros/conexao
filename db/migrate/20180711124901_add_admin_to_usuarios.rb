class AddAdminToUsuarios < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :admin, :boolean
  end
end

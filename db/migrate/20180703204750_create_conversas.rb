class CreateConversas < ActiveRecord::Migration[5.2]
  def change
    create_table :conversas do |t|
      t.timestamps
    end
  end
end

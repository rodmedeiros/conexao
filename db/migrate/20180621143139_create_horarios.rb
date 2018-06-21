class CreateHorarios < ActiveRecord::Migration[5.2]
  def change
    create_table :horarios do |t|
      t.string :dia_semana
      t.string :hora_inicio
      t.string :hora_fim
    end
  end
end

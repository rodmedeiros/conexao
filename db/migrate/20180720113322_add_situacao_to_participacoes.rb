class AddSituacaoToParticipacoes < ActiveRecord::Migration[5.2]
  def change
    add_column :participacoes, :situacao, :string, default: :inscrito
  end
end

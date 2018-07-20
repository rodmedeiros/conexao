require 'rails_helper'

RSpec.feature 'Disciplinas', focus: true do
  given (:joao) { create(:aluno_com_disciplinas, nome: 'Joao Augusto') }

  scenario 'visualiza disciplinas do semestre corrente' do
    visit disciplinas_path

    joao.turmas.each do |turma|
      expect(page).to have_content turma.disciplina
    end
  end

  scenario 'não possui disciplina nenhuma'

  scenario 'verifica detalhes de disciplina'
end

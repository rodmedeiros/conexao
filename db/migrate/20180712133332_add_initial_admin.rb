class AddInitialAdmin < ActiveRecord::Migration[5.2]
  def up
    Usuario.create(
      nome: 'root',
      iduff: '000000000',
      cpf: 'xxxxxxxxxxx',
      tipo: 'professor',
      admin: true ,
      password: 'a',
      password_confirmation: 'a'
    )
  end

  def down
    root = Usuario.find_by(iduff: '000000000')
    root.destroy
  end
end

class AddInitialUser < ActiveRecord::Migration[5.2]
  def up
    Usuario.create(
        nome: 'Rodrigo',
        iduff: '202021433',
        cpf: '12345678912',
        tipo: 'aluno',
        admin: false ,
        password: '123456',
        password_confirmation: '123456'
    )
  end

  def down
    user = Usuario.find_by(iduff: '202021433')
    user.destroy
  end
end

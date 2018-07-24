class SessoesController < ApplicationController

  #before_action :block_access, execept: [:destroy]

  def new
  end

  def create

    usuario = Usuario.find_by(cpf: params[:cpf])
    if usuario && usuario.authenticate(params[:senha])
      login usuario
      flash.now[:success] = 'usuário logado'
      redirect_to root_path
    else
      redirect_to login_path
      flash[:warning] = 'cpf ou senha inválida'
    end
  end

  def destroy
    logout
    flash[:success] = 'Você foi deslogado'
    redirect_to root_path
  end

end

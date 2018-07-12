class SessoesController < ApplicationController
  before_action :usuario_logado, only: [:new, :create]

  def new
  end

  def create

    usuario = Usuario.find_by(cpf: params[:cpf])
    if usuario && usuario.authenticate(params[:senha])

      if usuario.admin
        session[:user_id] = usuario.id
        flash[:success] = 'usuário logado'
      else
        flash[:danger] = 'Você não possui permissão'
      end

      redirect_to root_path
    else
      flash[:danger] = 'CPF ou senha inválido'
      render 'new'
    end
  end

  def destroy
    if logado?
      logout
      flash[:success] = 'Você foi deslogado'
    else
      flash[:danger] = 'você não está logado'
    end

    redirect_to root_path
  end

  private
    def usuario_logado
      if logado?
        flash[:warning] = 'Você já está logado'
        redirect_to root_path
      end
    end
end

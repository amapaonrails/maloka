class ContasController < ApplicationController
  def new
    @conta = Conta.new
  end

  def create
    @conta = Conta.new(conta_params)
    if @conta.save
      redirect_to root_path, notice: 'Inscrito com sucesso'
      else
        render action: 'new'
      end
    end

  private
    def conta_params
      params.require(:conta).permit(:subdominio)
    end
  end
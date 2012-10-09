class PageController < ApplicationController
  def empresa
  end

  def home
  end

  def portfolio
  end

  def clientes
  end

  def contato
    @mensagem = Mensagem.new
  end

end

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
  end

  def dispara_email
    info_usuario = params[:info_usuario]
    if ContatoMailer.enviar_email(info_usuario).deliver
      flash[:noticia] = "Mensagem enviada."
    else
      flash[:noticia] = "Houve algum problema, sua mensagem  nao pode  ser enviada."
    end
    redirect_to contato_url
  end
end

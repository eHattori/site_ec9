class ContactMailer < ActionMailer::Base
  default from: "sender@ec9.com.br"

  def form_contato(contato)
  	@contato = contato
  	@contato.mensagem = "De: #{@contato.email}\nMensagem: #{@contato.mensagem}"
  	mail(:from => @contato.email,
  		 :to => 'carlos.ribeiro@ec9.com.br', 
  		 :subject => "Contato Site EC9: #{@contato.assunto}", 
  		 :body => @contato.mensagem )
  end
end

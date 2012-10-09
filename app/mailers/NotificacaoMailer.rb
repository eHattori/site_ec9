class  NotificacaoMailer < ActionMailer::Base

	default :from => "maicon.oliveira@ec9.com.br"

	default :to => "maicon.oliveira@ec9.com.br"

	def nova_mensagem(mensagem)
		@mensagem = mensagem
		mail(:subject => "www.ec9.com.br #{mensagem.subject}")
	end
end
# coding: utf-8

class ContatoMailer< ActionMailer::Base
	attr_accessor :nome,:email,:assunto,:mensagem

	default to:"contato@ec9.com.br"
			from: mensagem
  headers = {'Retun-Path' => mensagem}

	def enviar_email(info_usuario)	
		@info_usuario = info_usuario

		mail(:to => App.email.andress,
			:from => info_usuario.email,
			:subject => info_usuario.subject)
    end
end

# coding: utf-8

class ContatoMailer < ActionMailer::Base


	attr_accessor :nome,:email,:assunto,:mensagem

	default to:"maicon.oliveira@ec9.com.br"
			from: mensagem
	headers = {'Return-Path' => mensagem}

	
def enviar_email(info_usuario)	
		@info_usuario = info_usuario
		mail(	
			to:"maicon.oliveira@ec9.com.br",
			subject:"Formulário de Contato da minha aplicação",
			from:"Aplicação #{mensagem}", mensagem
			)
	end

	
end

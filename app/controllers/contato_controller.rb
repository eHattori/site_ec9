class ContatoController < ApplicationController

	def novo 
		@mensagem = Mensagem.new
	end

	def criar
		@mensagem = Mensagem.new(params[:mensagem])

		if @mensagem.valid?
			NotificacaoMailer.nova_mensagem(@mensagem).deliver	
			redirect_to(root_path, :aviso => "Mensagem foi enviada com sucesso")
		else
			flash.now.alert = "Por favor, preencha todos os campos."
			render :new
		end
	end


end
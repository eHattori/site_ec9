class MensagemController < ApplicationController
	def create
		@mensagem = Mensagem.new(params[:mensagem])
		ContactMailer.form_contato(@mensagem).deliver
		render 'obrigado'		
	end

	def obrigado
	end
end
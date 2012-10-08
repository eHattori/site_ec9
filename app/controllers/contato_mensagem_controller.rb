class ContatoMensagemController < ApplicationController
  def create
    @contact_message = MensagenContato.new(params[:contact_message])
    @contact_message.save
    flash[:notice] = 'Thank you for your message!'
  end
end
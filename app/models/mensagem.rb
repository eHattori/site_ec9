class Mensagem
	
	include ActiveModel::Validations
	include ActiveModel::Conversion
	extend ActiveModel::Naming

	attr_accessor :nome,:email,:assunto,:mensagem

	validates :nome, :email, :assunto, :mensagem
	validates :email, :format =>{ :with => %r{.+@.+\..+} }, :allow_blank => true 

	def inicializar(atributos = {})
		atributos.each do |nome, value|
			send("#{nome}=", value)
	end

	def persisted?
		false
	end
end
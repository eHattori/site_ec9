class MensagenContato
  attr_accessor :nome,:email, :assunto, :mensagem
  
  def initialize(attributes = {})
    attributes.each do |key, value|
      send("#{key}=", value)
    end
  end
  
  def save
    Notifier.contact_me(self).deliver
  end
end
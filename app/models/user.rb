class User < ApplicationRecord
  has_secure_password
  validates :userCompleto,uniqueness: { message: 'ya existe!  '}, presence: { message: 'No puede dejarse vacío' }
  validates :password,presence: {message: 'No puede dejarse Vacio'}, length: {minimum: 8, maximum: 25, message: 'Minimo de caracter permitido es 8'}
  validates :Correo, presence:  { message: 'No puede dejarse vacío' },uniqueness: { message: 'ya existe!  '}, email:  {message: "Invalido, Utilizar @/gmail/hotmail/dominio.com/.com, ejemplo: example@dominio.com" }
  validates :Tipo, presence: {message: 'No puede dejarse vacio'}

  def admin?
    self.Tipo =='admin'
  end

  def supervisor?
    self.Tipo =='supervisor'
  end

  def almacen?
    self.Tipo =='almacen'
  end

end

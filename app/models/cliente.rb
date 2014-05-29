class Cliente < ActiveRecord::Base
		# Validar que los atributos sean obligatorios
		validates :cedula, :presence => true
		validates :nombre, :presence => true
		validates :fch_ncto, :presence => true
		validates :mail, :presence => true
		# validar un atributo booleano
		# validar que un atributos unicos
		validates :cedula, uniqueness: { message: "No se puede Repetir" }
		validates :mail,
		uniqueness: { message: "No se puede Repetir" }
		validates :genero, inclusion: [true, false]
		# validar formato de un email
		validates :mail, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
		message: 'Formato no valido' }
		# valida la longitud de un campo, tanto la longitud minima como la maxima
		validates :cedula, length: { minimum: 5, maximum: 10 }
		validates :nombre, length: { minimum: 5, maximum: 50 }
		# Valida si un atributo es numerico
        validates :cedula, numericality: true
		def self.search(search, page)
			where(['upper(nombre) like ?',
			"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre")
		end
   

end

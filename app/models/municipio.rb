class Municipio < ActiveRecord::Base
	has_many :empresas
      def self.search(search, page)
     where(['upper(nombre) like ?', "%#{search}%".upcase]).paginate(page: page, per_page: 1).order("nombre")
  end
end

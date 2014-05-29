class Empresa < ActiveRecord::Base
	
	belongs_to :municipio
    def self.search(search, page)
     where(['upper(razon_social) like ?', "%#{search}%".upcase]).paginate(page: page, per_page: 1).order("razon_social")
  end
end

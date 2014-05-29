module EmpresasHelper
	def tamano_empresa(n)
   	   if n <= 10
   	   	  "Micro"
   	   elsif n > 10 and n <= 50
   	   	  "Mediana"
   	   elsif n > 50
   	   	  "Grande"
       else
       	  "No tiene valor"
   	   end
   end
end

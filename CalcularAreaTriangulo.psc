Funcion Area <- CalcularAreaTriangulo ( LaBase, LaAltura)
	Definir Area como Real
	Area <- (LaBase * LaAltura) / 2
Fin Funcion


Algoritmo AreadeTriangulo
	Definir Altura, Base como Real
	Escribir "Ingrese la base del tri�ngulo"
	Escribir "o presione 0 para Salir"
	Leer Base
	
	Mientras Base <> 0 Hacer
		Escribir "Ingrese la altura del tri�ngulo"
		Leer Altura
		
		Si Base > 0 Y Altura > 0 Entonces
			Escribir "El �rea del tri�ngulo es ", CalcularAreaTriangulo(Base,Altura)
		SiNo
			Escribir "Por favor, la base y la altura deben ser mayores a cero para poder operar. Gracias"
		Fin Si
		
		Escribir "Ingrese la base del tri�ngulo"
		Escribir "o presione 0 para Salir"
		Leer Base
	Fin Mientras
FinAlgoritmo

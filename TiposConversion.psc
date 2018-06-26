Funcion  F <- CentigradosAFahrenheit (C)
	Definir F como Real
	F <- (9 / 5 + C) + 32
Fin Funcion

Funcion  C <- FahrenheitACentigrados (F)
	Definir C como Real
	C <- (F - 32) * 9 / 5
Fin Funcion

Algoritmo ConversionTemperatura
	Definir grados Como Real
	Definir TipoConversion Como Caracter
	Escribir "Ingrese los grados Centigrados o Fahrenheit que desea convertir o precione 0 para salir"
	Leer grados
	
	Mientras grados <> 0 Hacer
		Escribir "Precione a para convertir Centigrados a Fahrenheit"
		Escribir "o precione b para convertir Fahrenheit a Centigrados"
		Escribir "o precione c para ingresar otro valor de grados"
		Escribir "o precione d para salir"
		Leer TipoConversion
		
		Mientras TipoConversion <> "d" Hacer
			Segun TipoConversion Hacer
				"a":
					Escribir "Los " , grados, "°C a Fahrenheit son " CentigradosAFahrenheit(grados) "°F"
				"b":
					Escribir "Los " , grados, "°F a Centigrados son " FahrenheitACentigrados(grados) "°C"
				"c":
					Escribir "Ingrese los grados Centigrados o Fahrenheit que desea convertir o precione 0 para salir"
					Leer grados
				De Otro Modo:
					Escribir "Por favor, Ingrese a, b, c o d"
			Fin Segun
			
			Escribir "Precione a para convertir Centigrados a Fahrenheit"
			Escribir "o precione b para convertir Fahrenheit a Centigrados"
			Escribir "o precione c para ingresar otro valor de grados"
			Escribir "o precione d para salir"
			Leer TipoConversion
		FinMientras
		
		Si TipoConversion = "d" entonces
			grados = 0
		FinSi
	Fin Mientras
FinAlgoritmo

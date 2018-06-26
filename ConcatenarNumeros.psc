// 1)Leer cinco números enteros de un dígito y almacenarlos en una sola variable 
// que contenga a esos cinco dígitos 
Algoritmo ConcatenarNumeros
	Definir NumeroIngresado,Contador Como Entero
	Definir Acumulador Como Caracter
	NumeroIngresado <- 0
	Contador <- 0
	Acumulador <- ''
	Mientras Contador!=5 Hacer
		Escribir 'Escribe un numero entero'
		Leer NumeroIngresado
		Acumulador <- Concatenar(Acumulador,ConvertirATexto(NumeroIngresado))
		Contador <- Contador+1
	FinMientras
	Escribir 'El numero concatenado es: ',Acumulador
	NumeroIngresado <- 0
	Contador <- 0
	Acumulador <- ''
FinAlgoritmo


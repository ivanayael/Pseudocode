SubProceso MostrarDivisores (N por Valor)
	Definir I como Entero
	Para I <- 1 Hasta N Con Paso 1 Hacer
		Si N MOD I = 0 Entonces
			Escribir I
		Fin Si
	Fin Para
FinSubProceso

Funcion CANT <- CantidadDivisores ( N por Valor )
	Definir CANT, I  como Entero
	CANT <- 0
	Para I <- 1 Hasta N Con Paso 1 Hacer
		Si N MOD I = 0 Entonces
			CANT = CANT + 1
		Fin Si
	Fin Para
Fin Funcion


Algoritmo Divisores
	Definir NUM como Entero
	Escribir "Ingrese un numero entero"
	Leer NUM
	
	MostrarDivisores(NUM)
	Escribir NUM, " tiene ", CantidadDivisores(NUM), " divisores" 
FinAlgoritmo


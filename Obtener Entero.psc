SubProceso ObtenerEntero(Num)
	Repetir
		Escribir "Ingrese un numero entero mayor o igual a cero"
		Escribir "y precione cero para terminar"
		Leer Num
	Hasta Que Num >= 0
FinSubProceso

Algoritmo NumeroEntero
	Definir Ingreso, Suma Como Entero
	Suma <-0
	ObtenerEntero(Ingreso)
	Mientras Ingreso <> 0 Hacer
		Suma<-Suma+Ingreso
        ObtenerEntero(Ingreso)
	Fin Mientras
	Mostrar "La suma de los números ingresados es:", Suma
FinAlgoritmo

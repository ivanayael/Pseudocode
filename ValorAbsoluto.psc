Funcion ABSOLUTO <- ValorAbsoluto(NUM)
    Definir ABSOLUTO Como ENTERO
	Si (NUM < 0) Entonces
		ABSOLUTO <- NUM*(-1)
	Sino
		ABSOLUTO <- NUM
	FinSi
Fin Funcion


Algoritmo ObtenerValorAbsoluto
	Mostrar "Ingrese un número o 0 para finalizar"   
	Leer N
	Mientras (N <> 0) Hacer
		ABSOLUTO = ValorAbsoluto(N)
		Mostrar "El valor absoluto de ",N," es: ", ABSOLUTO
		Mostrar "Ingrese un número o 0 para finalizar"
		Leer N
	Fin Mientras 
FinAlgoritmo

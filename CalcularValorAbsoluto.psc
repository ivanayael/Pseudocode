Funcion RESULTADO <- CALCULARABSOLUTO( NUMERODELUSUARIO )
	Si (NUMERODELUSUARIO < 0) Entonces
		RESULTADO <- NUMERODELUSUARIO*(-1)
	Sino
		RESULTADO <- NUMERODELUSUARIO
	FinSi
FinFuncion

Proceso Principal
	Definir VAL_ABSOLUTO, VAL_INGRESADO Como REAL
	Escribir "Ingrese un numero para determinar el valor absoluto"
	Escribir "O ingrese 0 (cero) para salir"
	Leer VAL_INGRESADO
	Mientras (VAL_INGRESADO <> 0)
		RESULTADO <- CALCULARABSOLUTO(VAL_INGRESADO)
		Escribir "El valor absoluto de ",VAL_INGRESADO," es:", RESULTADO
		Escribir "Ingrese un numero para determinar el valor absoluto"
		Escribir "O ingrese 0 (cero) para salir"
		Leer VAL_INGRESADO
	FinMientras
FinProceso

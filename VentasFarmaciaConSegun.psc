//Hacer un algoritmo que lea las ventas efectuadas por una farmacia. Por cada venta se ingresa un c�digo indicador (O, E � T) y un importe.
//Si el c�digo es O, significa que corresponde a una obra social (se abona s�lo en efectivo), le corresponde un 40% de descuento.
//Si el c�digo es E, significa que se abona en efectivo, le corresponde un 10% de descuento.
//Si el c�digo es T, significa que se abona con tarjeta, le corresponde un 15% de recargo.
//Al terminar el d�a se ingresa un movimiento con �*� en el c�digo.
//Se pide informar:
//a) Total de operaciones y monto del d�a.
//b) Total de operaciones y total de montos en efectivo, discriminando cu�les fueron por obra social y cu�les no.
//c) Total de operaciones y montos por tarjeta.
//Tener en cuenta: el total de montos debe ser el efectivamente cobrado luego de efectuar los descuentos o recargos correspondientes.

Algoritmo VentaFarmacias
	Definir MOVIMIENTO como Caracter
	Definir CANT_OPERACION, CANT_EFECTIVO, CANT_OB, CANT_TARJETA Como Entero
	Definir MONTO, NETO, TOTAL_OPERACION, MONTO_EFECTIVO, MONTO_OS, MONTO_TARJETA como Real
	
	CANT_OPERACION<-0
	CANT_EFECTIVO<-0
	CANT_OB<-0
	CANT_TARJETA<-0
	
	MONTO<-0
	NETO<-0
	TOTAL_OPERACION<-0
	MONTO_EFECTIVO<-0
	MONTO_OS<-0
	MONTO_TARJETA<-0
	
	Limpiar Pantalla
	Repetir
		Escribir "Ingrese el tipo de venta que desea efectuar"
		Escribir "C�digo o para Obra Social"
		Escribir "C�digo e para Efectivo"
		Escribir "C�digo t para Tarjeta"
		Escribir "Al Terminar el d�a presione * para ver los totales"
		Leer MOVIMIENTO
	Hasta Que MOVIMIENTO = "o" O MOVIMIENTO = "e" O MOVIMIENTO = "t" O MOVIMIENTO = "*" 
	
	Mientras MOVIMIENTO <> "*" Hacer
		Escribir "Ingrese el monto de la venta: "
		Leer MONTO
		
		Segun MOVIMIENTO Hacer
			"o":
				NETO <- MONTO-(MONTO * (40/100))
				MONTO_OS <- MONTO_OS + NETO
				CANT_OB <- CANT_OB + 1
			"e":
				NETO <- MONTO-(MONTO * (10/100))
				MONTO_EFECTIVO <- MONTO_EFECTIVO + NETO
				CANT_EFECTIVO <- CANT_EFECTIVO + 1
			"t":
				NETO <- MONTO+(MONTO * (15/100))
				MONTO_TARJETA <- MONTO_TARJETA + NETO
				CANT_TARJETA <- CANT_TARJETA + 1
			De Otro Modo:
				Escribir "Opci�n no v�lida"
		Fin Segun
		
		CANT_OPERACION<-CANT_OPERACION+1
		TOTAL_OPERACION<-TOTAL_OPERACION+NETO
		Limpiar Pantalla
		Repetir
			Escribir "Ingrese el tipo de venta que desea efectuar"
			Escribir "C�digo o para Obra Social"
			Escribir "C�digo e para Efectivo"
			Escribir "C�digo t para Tarjeta"
			Escribir "Al Terminar el d�a presione * para ver los totales"
			Leer MOVIMIENTO
		Hasta Que MOVIMIENTO = "o" O MOVIMIENTO = "e" O MOVIMIENTO = "t" O MOVIMIENTO = "*" 
	Fin Mientras
	
	Si MOVIMIENTO = "*" Entonces
		
		Limpiar Pantalla
		Escribir "Total de Operaciones: ",CANT_OPERACION
		Escribir "Monto Total del D�a: $",TOTAL_OPERACION
		
		Escribir "//CON EFECTIVO Y OBRA SOCIAL//"
		Escribir "Total de Operaciones En Efectivo Por Obra Social: ", CANT_OB
		Escribir "Monto del d�a en Efectivo por Obra Social: $", MONTO_OS
		
		Escribir "//CON EFECTIVO SIN OBRA SOCIAL//"
		Escribir "Total de Operaciones En Efectivo Sin Obra Social: ", CANT_EFECTIVO
		Escribir "Monto del d�a en Efectivo sin Obra Social: $", MONTO_EFECTIVO
		
		Escribir "//CON TARJETA SIN OBRA SOCIAL//"
		Escribir "Total de Operaciones En Tarjeta: ", CANT_TARJETA
		Escribir "Monto del d�a en Tarjeta: $", MONTO_TARJETA
		
		CANT_OPERACION<-0
		CANT_EFECTIVO<-0
		CANT_OB<-0
		CANT_TARJETA<-0
		
		MONTO<-0
		NETO<-0
		TOTAL_OPERACION<-0
		MONTO_EFECTIVO<-0
		MONTO_OS<-0
		MONTO_TARJETA<-0
	FinSi
FinAlgoritmo

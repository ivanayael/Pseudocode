//2)Realizar un algoritmo en diagrama de flujo que pida como entrada 
// el precio de un artículo y calcule su valor aplicando un 21% de IVA.
Algoritmo PrecioIVA
	Definir PrecioArticulo, PrecioArticuloConIVA, PrecioArticuloSinIVA Como Real
	Definir IVA,CantOpeIVA,CantOpeQuitaIVA como Entero
	Definir Movimiento como Caracter
	PrecioArticulo<-0
	PrecioArticuloConIVA<-0 
	PrecioArticuloSinIVA<-0
	IVA<-21

	Limpiar Pantalla
	Repetir
		Escribir "Para calcular el IVA del articulo SIN IVA precione i"
		Escribir "Para calcular el IVA del articulo CON IVA precione c"
		Escribir "o precione * para Salir"
		Leer Movimiento
	Hasta Que Movimiento = "i" O Movimiento = "c" O Movimiento = "*" 
	
	
	Mientras Movimiento != "*"
		Escribir "Ingrese precio del articulo: "
		Leer PrecioArticulo
		
		Segun Movimiento Hacer
			"i":
				PrecioArticuloConIVA<-PrecioArticulo+(PrecioArticulo*(IVA/100))
				Escribir "El precio del artículo CON IVA es $ ", PrecioArticuloConIVA, " en pesos"
			"c":
				PrecioArticuloSinIVA<-PrecioArticulo-(PrecioArticulo*(IVA/100))
				Escribir "El precio del artículo SIN IVA es $ ", PrecioArticuloSinIVA, " en pesos"
			De Otro Modo:
				Escribir "Opción no válida"
		Fin Segun
		
		Repetir
			Escribir "Para calcular el IVA del articulo SIN IVA precione i"
			Escribir "Para calcular el IVA del articulo CON IVA precione c"
			Escribir "o precione * para Salir"
			Leer Movimiento
		Hasta Que Movimiento = "i" O Movimiento = "c" O Movimiento = "*" 
	FinMientras
	
	PrecioArticulo<-0
	PrecioArticuloConIVA<-0 
	PrecioArticuloSinIVA<-0
FinAlgoritmo

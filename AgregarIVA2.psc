// 2)Realizar un algoritmo en diagrama de flujo que pida como entrada 
// el precio de un artículo y calcule su valor aplicando un 21 MOD  de IVA.
Algoritmo PrecioIVA
	Definir PrecioArticulo,PrecioArticuloConIVA Como Real
	Definir IVA Como Entero
	PrecioArticulo <- 0
	PrecioArticuloConIVA <- 0
	IVA <- 21
	Escribir 'Ingrese precio del articulo o precione 0 para salir'
	Leer PrecioArticulo
	Mientras PrecioArticulo!=0 Hacer
		PrecioArticuloConIVA <- PrecioArticulo+(PrecioArticulo*(IVA/100))
		Escribir 'El precio del artículo CON IVA es $ ',PrecioArticuloConIVA,' en pesos'
		Escribir 'Ingrese precio del articulo o precione 0 para salir'
		Leer PrecioArticulo
	FinMientras
	PrecioArticulo <- 0
	PrecioArticuloConIVA <- 0
FinAlgoritmo


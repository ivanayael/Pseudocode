Algoritmo PrecioIVA
	//2)Realizar un algoritmo en diagrama de flujo que pida como entrada 
	//el precio de un artículo y calcule su valor aplicando un 21% de IVA.
	Definir PrecioArticulo, PrecioArticuloConIVA, MontoTotal Como Real
	Definir IVA,CantOpe como Entero
	PrecioArticulo<-0
	IVA<-21
	CantOpe<-0
	MontoTotal<-0
	
	Limpiar Pantalla

	Escribir "Escriba el precio del articulo o precione 0 para salir"
	Leer PrecioArticulo

	Mientras PrecioArticulo!= 0 Hacer
		PrecioArticuloConIVA<-PrecioArticulo+(PrecioArticulo*(IVA /100))
		CantOpe<-CantOpe+1
		MontoTotal<-MontoTotal+PrecioArticuloConIVA
		
		Escribir "Escriba el precio del articulo o precione 0 para salir"
		Leer PrecioArticulo
	Fin Mientras
	
	Si PrecioArticulo = 0 Entonces
		Limpiar Pantalla
		Escribir "El precio del artículo con IVA es $ ", PrecioArticuloConIVA
		Escribir "El Monto Total de los Articulos con IVA es $ ",MontoTotal
		Escribir "El Total de Operaciones efectuado es: ", CantOpe
		PrecioArticulo<-0
		CantOpe<-0
		MontoTotal<-0
	FinSi
FinAlgoritmo

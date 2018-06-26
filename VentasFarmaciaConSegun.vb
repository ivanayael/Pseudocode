' Este codigo ha sido generado por el modulo psexport 20180125-w32 de PSeInt.
' Es posible que el codigo generado no sea completamente correcto. Si encuentra
' errores por favor reportelos en el foro (http://pseint.sourceforge.net).

Module VENTAFARMACIAS

	' Hacer un algoritmo que lea las ventas efectuadas por una farmacia. Por cada venta se ingresa un código indicador (O, E ó T) y un importe.
	' Si el código es O, significa que corresponde a una obra social (se abona sólo en efectivo), le corresponde un 40% de descuento.
	' Si el código es E, significa que se abona en efectivo, le corresponde un 10% de descuento.
	' Si el código es T, significa que se abona con tarjeta, le corresponde un 15% de recargo.
	' Al terminar el día se ingresa un movimiento con ‘*’ en el código.
	' Se pide informar:
	' a) Total de operaciones y monto del día.
	' b) Total de operaciones y total de montos en efectivo, discriminando cuáles fueron por obra social y cuáles no.
	' c) Total de operaciones y montos por tarjeta.
	' Tener en cuenta: el total de montos debe ser el efectivamente cobrado luego de efectuar los descuentos o recargos correspondientes.
	Sub Main()
		Dim cant_efectivo As Integer
		Dim cant_ob As Integer
		Dim cant_operacion As Integer
		Dim cant_tarjeta As Integer
		Dim monto As Double
		Dim monto_efectivo As Double
		Dim monto_os As Double
		Dim monto_tarjeta As Double
		Dim movimiento As String
		Dim neto As Double
		Dim total_operacion As Double
		cant_operacion = 0
		cant_efectivo = 0
		cant_ob = 0
		cant_tarjeta = 0
		monto = 0
		neto = 0
		total_operacion = 0
		monto_efectivo = 0
		monto_os = 0
		monto_tarjeta = 0
		Console.Clear()
		Do
			Console.WriteLine("Ingrese el tipo de venta que desea efectuar")
			Console.WriteLine("Código o para Obra Social")
			Console.WriteLine("Código e para Efectivo")
			Console.WriteLine("Código t para Tarjeta")
			Console.WriteLine("Al Terminar el día presione * para ver los totales")
			movimiento = Console.ReadLine()
		Loop Until movimiento.Equals("o") Or movimiento.Equals("e") Or movimiento.Equals("t") Or movimiento.Equals("*")
		While Not movimiento.Equals("*")
			Console.WriteLine("Ingrese el monto de la venta: ")
			monto = Double.Parse(Console.ReadLine())
			Select Case movimiento
			Case "o"
				neto = monto-(monto*(40/100))
				monto_os = monto_os+neto
				cant_ob = cant_ob+1
			Case "e"
				neto = monto-(monto*(10/100))
				monto_efectivo = monto_efectivo+neto
				cant_efectivo = cant_efectivo+1
			Case "t"
				neto = monto+(monto*(15/100))
				monto_tarjeta = monto_tarjeta+neto
				cant_tarjeta = cant_tarjeta+1
			Case Else
				Console.WriteLine("Opción no válida")
			End Select
			cant_operacion = cant_operacion+1
			total_operacion = total_operacion+neto
			Console.Clear()
			Do
				Console.WriteLine("Ingrese el tipo de venta que desea efectuar")
				Console.WriteLine("Código o para Obra Social")
				Console.WriteLine("Código e para Efectivo")
				Console.WriteLine("Código t para Tarjeta")
				Console.WriteLine("Al Terminar el día presione * para ver los totales")
				movimiento = Console.ReadLine()
			Loop Until movimiento.Equals("o") Or movimiento.Equals("e") Or movimiento.Equals("t") Or movimiento.Equals("*")
		End While
		If movimiento.Equals("*") Then
			Console.Clear()
			Console.WriteLine("Total de Operaciones: ",cant_operacion)
			Console.WriteLine("Monto Total del Día: $",total_operacion)
			Console.WriteLine("//CON EFECTIVO Y OBRA SOCIAL//")
			Console.WriteLine("Total de Operaciones En Efectivo Por Obra Social: ",cant_ob)
			Console.WriteLine("Monto del día en Efectivo por Obra Social: $",monto_os)
			Console.WriteLine("//CON EFECTIVO SIN OBRA SOCIAL//")
			Console.WriteLine("Total de Operaciones En Efectivo Sin Obra Social: ",cant_efectivo)
			Console.WriteLine("Monto del día en Efectivo sin Obra Social: $",monto_efectivo)
			Console.WriteLine("//CON TARJETA SIN OBRA SOCIAL//")
			Console.WriteLine("Total de Operaciones En Tarjeta: ",cant_tarjeta)
			Console.WriteLine("Monto del día en Tarjeta: $",monto_tarjeta)
			cant_operacion = 0
			cant_efectivo = 0
			cant_ob = 0
			cant_tarjeta = 0
			monto = 0
			neto = 0
			total_operacion = 0
			monto_efectivo = 0
			monto_os = 0
			monto_tarjeta = 0
		End If
	End Sub

End Module

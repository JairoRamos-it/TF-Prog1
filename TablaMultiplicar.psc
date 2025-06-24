// Tabla de multiplicar
// Genera la tabla de multiplicar (hasta n x 20)
// de un número ingresado por el usuario.

Algoritmo TablaMultiplicar
	Definir tabla, i Como Entero;
	
	Escribir "Ingrese el número: ";
	Leer tabla;
	
	Para i <- 1 Hasta 20 Con Paso 1 Hacer
		Escribir i, " x ", tabla, " = ", i*tabla;
	Fin Para
	
FinAlgoritmo

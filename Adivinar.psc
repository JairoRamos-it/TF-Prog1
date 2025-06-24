// Adivinar
// Genera un n�mero aleatorio entre 1 y 25 y permite al usuario
// adivinarlo. Indica si su intento es demasiado alto, demasiado bajo
//	o correcto. (Usar la funci�n Azar)

Algoritmo Adivinar
	Definir nro_aleatorio, nro_ingresado Como Entero;
	Definir continuar Como Logico;
	
	nro_aleatorio <- Azar(26); // Azar toma un entero aleatorio en el rango [0;x-1]
	continuar <- Verdadero;
	Escribir "[DEBUG] El nro aleatorio es: ", nro_aleatorio;
	Escribir "Ingrese un n�mero (1 al 25): ";
	Leer nro_ingresado;
	Mientras continuar = Verdadero Hacer
		Si nro_aleatorio = nro_ingresado Entonces
			Escribir "N�mero encontrado: ", nro_aleatorio;
			continuar <- Falso;
		Fin Si
		Si nro_ingresado < nro_aleatorio  Entonces
				Escribir "Ingrese un n�mero mayor: ";
				Leer nro_ingresado;
		Fin Si
		Si nro_ingresado > nro_aleatorio Entonces
				Escribir "Ingrese un n�mero menor: ";
				Leer nro_ingresado;
		Fin Si
	Fin Mientras
	
FinAlgoritmo

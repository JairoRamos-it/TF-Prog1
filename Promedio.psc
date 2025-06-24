//Promedio
//Este ejercicio debe permitir ingresar una cantidad indefinida de
//números y luego calcular el promedio. El programa debe finalizar
//cuando el usuario ingrese un valor negativo, el mismo no se debe
//incluir en el promedio.

Algoritmo CalculoPromedio
	Definir promedio, auxiliar Como Real;
	Definir continuarCalculando Como Logico;
	Definir contador Como Entero; // lo mas aprox a un natural
	
	continuarCalculando <- Verdadero;
	promedio <- 0;
	auxiliar <- 0;
	contador <- 0;
	
	// Carga de datos
	Mientras continuarCalculando Hacer
		Escribir "Ingrese un numero: ";
		Leer auxiliar;
		Si auxiliar < 0 Entonces
			Escribir "Ciclo finalizado. Se ingreso el negativo: ", auxiliar;
			continuarCalculando <- Falso;
		SiNo
			promedio <- auxiliar + promedio;
			contador <- contador + 1;
		Fin Si
	Fin Mientras
	
	// Calculo del promedio
	Si contador = 0 Entonces // Si el primer nro ingresado es negativo
		Escribir "No se pudo calcular el promedio";
	SiNo
		Escribir "Suma total ", promedio, ". Cantidad de nros ingresados ", contador;
		promedio <- promedio/contador;
		Escribir "El promedio es: ", promedio;
	Fin Si

FinAlgoritmo

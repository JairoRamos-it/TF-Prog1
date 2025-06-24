Algoritmo alumnos_notas

	// Declaramos los arreglos;
	Dimensionar nombres[5];
	Dimensionar notas[5,3];
	Dimensionar promedios[5];
	
	Definir indice_nombres, indice_notas, suma, notas Como Entero;
	Definir promedios Como Real;
	Definir nombres Como Caracter;
	
	// Para cada alumno, primero se ingresa su nombre y luego sus 3 notas;
	Para indice_nombres <- 1 Hasta 5 Hacer;
		Escribir Sin Saltar "Ingrese el nombre del alumno ", indice_nombres, ":";
		Leer nombres[indice_nombres];
		
		suma <- 0;
		Escribir "A continuación, ingrese las 3 notas de ", nombres[indice_nombres], ":";
		
		Para indice_notas <- 1 Hasta 3 Hacer;
			Escribir Sin Saltar "  Ingrese la nota ", indice_notas, ":";
			Leer notas[indice_nombres, indice_notas];
			suma <- suma + notas[indice_nombres, indice_notas];
		FinPara;
		
		promedios[indice_nombres] <- suma / 3;
	FinPara;
	
	// Mostrar resultados finales;
	Para indice_nombres <- 1 Hasta 5 Hacer;
		Escribir  ""; Escribir Sin Saltar "Promedio de ", nombres[indice_nombres], ": ", promedios[indice_nombres], ". ";
		Escribir Sin Saltar "Sus notas: ";
		Para indice_notas <- 1 Hasta 3 Hacer
			Escribir Sin Saltar notas[indice_nombres, indice_notas], ", ";
		FinPara
	FinPara;
	
	Escribir  "";
FinAlgoritmo

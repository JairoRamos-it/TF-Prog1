//Clase 4 - Ejercicio 2:
//	Consigna original: Desarrollar un programa en el cual se ingresan el nombre de cinco (5)
//	alumnos , el nombre del curso, sus notas, el programa devolverá, "El
//  alumno *nombre* tiene estas notas: *notas* y su promedio es *promedio*

// Permite la carga de 5 o menos alumnos y N notas para cada uno de ellos.
// En la medida que se cargan las notas de cada alumno calcula el promedio
// de cada uno de ellos y lo muestra en pantalla. No hay validaciones en la carga datos.
Algoritmo clase4_ej2_version1
	
	Definir cargar_notas Como Logico;	
	Definir nombre_alumno, nombre_curso Como Caracter;
	Definir nota_alumno Como Caracter;
	Definir cant_alumnos, cant_notas Como Entero;
	Definir sumNotas, promedio Como Real;
	
	Escribir "Presione <enter> para detener la carga de datos";
	
	cant_alumnos = 0;
	Mientras cant_alumnos < 5 Hacer
		
		Escribir Sin Saltar "Ingresar el nombre del alumno: ";
		Leer nombre_alumno;
		
		Si nombre_alumno = '' Entonces
			// el usuario elige cargar menos de 5 alumnos
			cant_alumnos = 5;
			Escribir ""; Escribir "Carga de alumnos finalizada. Saliendo...";
		SiNo
			Escribir Sin Saltar "Ingresar el nombre del curso: ";
			Leer nombre_curso;
			
			sumNotas <- 0;
			cant_notas <- 0;
			cargar_notas <- Verdadero;
			Mientras cargar_notas = Verdadero Hacer
				Escribir Sin Saltar "Ingrese una nota de ", nombre_alumno, ": ";
				Leer nota_alumno;
				Si nota_alumno = '' Entonces
					cargar_notas = Falso;
					Escribir "Carga de notas finalizada. ";
				SiNo
					cant_notas <- cant_notas + 1;
					sumNotas <- ConvertirANumero(nota_alumno) + sumNotas;
				Fin Si
			Fin Mientras
			
			promedio <- sumNotas / cant_notas;
			Escribir ""; Escribir "Alumno: ", nombre_alumno,  ". Promedio: ", promedio, ". Cant. de Notas: ", cant_notas; Escribir "";
		Fin Si
	Fin Mientras

FinAlgoritmo

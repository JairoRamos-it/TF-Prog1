//Contador de vocales
//Este ejercicio debe solicitar que se ingrese una palabra o frase.
//Para que sea analizada y retorne cuántas vocales (tanto
//	mayúsculas como minúsculas) contiene.

Algoritmo ContadorVocales
	Definir frase, letra Como Cadena;
	Definir long_frase, i, vocales_minusculas, vocales_mayusculas Como Entero;
	
	vocales_mayusculas <- 0;
	vocales_minusculas <- 0;
	
	// Carga de datos
	Escribir "Ingrese una palabra o frase: ";
	Leer frase;
	
	// Búsqueda de vocales y conteo
	long_frase <- Longitud(frase);
	Para i<-1 Hasta long_frase Con Paso 1 Hacer
		letra = SubCadena(frase, i, i);
		Segun letra Hacer // las sentencias Escribir letra, "--> SÍ/NO"; podrían suprimirse
			'a':
				vocales_minusculas <- vocales_minusculas + 1; Escribir letra, "--> SÍ";
			'e':
				vocales_minusculas <- vocales_minusculas + 1; Escribir letra, "--> SÍ";
			'i':
				vocales_minusculas <- vocales_minusculas + 1; Escribir letra, "--> SÍ";
			'o':
				vocales_minusculas <- vocales_minusculas + 1; Escribir letra, "--> SÍ";
			'u':
				vocales_minusculas <- vocales_minusculas + 1; Escribir letra, "--> SÍ";
			'A':
				vocales_mayusculas <- vocales_mayusculas + 1; Escribir letra, "--> SÍ";
			'E':
				vocales_mayusculas <- vocales_mayusculas + 1; Escribir letra, "--> SÍ";
			'I':
				vocales_mayusculas <- vocales_mayusculas + 1; Escribir letra, "--> SÍ";
			'O':
				vocales_mayusculas <- vocales_mayusculas + 1; Escribir letra, "--> SÍ";
			'U':
				vocales_mayusculas <- vocales_mayusculas + 1; Escribir letra, "--> SÍ";
			De Otro Modo:
				Escribir letra, "--> NO";
		Fin Segun
	Fin Para
	
	Escribir "Cantidad de vocales: ", vocales_minusculas + vocales_mayusculas;
	Escribir "Vocales minusculas: ", vocales_minusculas;
	Escribir "Vocales mayusculas: ", vocales_mayusculas;
	
FinAlgoritmo

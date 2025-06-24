//Contador de vocales
//Este ejercicio debe solicitar que se ingrese una palabra o frase.
//Para que sea analizada y retorne cu�ntas vocales (tanto
//	may�sculas como min�sculas) contiene.

Algoritmo ContadorVocales
	Definir frase, letra Como Cadena;
	Definir long_frase, i, vocales_minusculas, vocales_mayusculas Como Entero;
	
	vocales_mayusculas <- 0;
	vocales_minusculas <- 0;
	
	// Carga de datos
	Escribir "Ingrese una palabra o frase: ";
	Leer frase;
	
	// B�squeda de vocales y conteo
	long_frase <- Longitud(frase);
	Para i<-1 Hasta long_frase Con Paso 1 Hacer
		letra = SubCadena(frase, i, i);
		Segun letra Hacer // las sentencias Escribir letra, "--> S�/NO"; podr�an suprimirse
			'a':
				vocales_minusculas <- vocales_minusculas + 1; Escribir letra, "--> S�";
			'e':
				vocales_minusculas <- vocales_minusculas + 1; Escribir letra, "--> S�";
			'i':
				vocales_minusculas <- vocales_minusculas + 1; Escribir letra, "--> S�";
			'o':
				vocales_minusculas <- vocales_minusculas + 1; Escribir letra, "--> S�";
			'u':
				vocales_minusculas <- vocales_minusculas + 1; Escribir letra, "--> S�";
			'A':
				vocales_mayusculas <- vocales_mayusculas + 1; Escribir letra, "--> S�";
			'E':
				vocales_mayusculas <- vocales_mayusculas + 1; Escribir letra, "--> S�";
			'I':
				vocales_mayusculas <- vocales_mayusculas + 1; Escribir letra, "--> S�";
			'O':
				vocales_mayusculas <- vocales_mayusculas + 1; Escribir letra, "--> S�";
			'U':
				vocales_mayusculas <- vocales_mayusculas + 1; Escribir letra, "--> S�";
			De Otro Modo:
				Escribir letra, "--> NO";
		Fin Segun
	Fin Para
	
	Escribir "Cantidad de vocales: ", vocales_minusculas + vocales_mayusculas;
	Escribir "Vocales minusculas: ", vocales_minusculas;
	Escribir "Vocales mayusculas: ", vocales_mayusculas;
	
FinAlgoritmo

//Invertir
//El ejercicio debe pedir que se ingrese una cadena de texto o frase
//y la retorna invertida.

Algoritmo Invertir
	Definir frase Como Cadena;
	Definir i Como Entero;
	
	Escribir sin bajar "Ingrese la frase: ";
	Leer frase;
	Escribir sin bajar "Frase invertida: ";
	
	Para i <- Longitud(frase) Hasta 1 Con Paso -1 Hacer
		Escribir sin bajar SubCadena(frase, i, i);
	Fin Para
	
	Escribir " ";
	
FinAlgoritmo

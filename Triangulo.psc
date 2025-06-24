Funcion ImprimirSeparador(texto_separador)
	Escribir " ";
	Escribir "     -------------";
	Escribir "     ", texto_separador;
	Escribir "     -------------";
	Escribir " ";
Fin Funcion

// Triángulo
// Escribe un programa que calcule el área de un triángulo
// dados su base y su altura. (Datos ingresados por el usuario)

// PENDIENTE: agregar bucle para continuar usando la aplicación y el interrogante si el usuario quiere salir del programa

Algoritmo Triangulo
	Definir base, altura Como Entero;
	
	Escribir Sin Saltar "Ingrese la base: ";
	Leer base;
	Escribir Sin Saltar "Ingrese la altura: ";
	Leer altura;
	
	ImprimirSeparador("Calculando...");
	
	Escribir Sin Saltar "(", base, " x ", altura, ") / 2 = ", (base*altura)/2;
	
	ImprimirSeparador("Saliendo...");
	
FinAlgoritmo

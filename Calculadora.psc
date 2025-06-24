//Calculadora
//Este ejercicio debe solicitar dos números y la operación que desea
//realizar (suma, resta, multiplicación o división). Luego, calculará y
//mostrará el resultado correspondiente según la operación
//seleccionada.

Algoritmo Calculadora
	Definir num1, num2 Como Real;
	Definir operador, continuarOperando Como Caracter;
	Definir numeroValido Como Logico;
	
	Repetir
		Escribir "Primer número: ";
		Leer num1;
		
		Escribir "OPERACION (+, -, *, /): ";
		Leer operador;
		Mientras operador <> '+' Y operador <> '-' Y operador <> '*' Y operador <> '/' Hacer
			Escribir "Operador no válido. Intente nuevamente: (+, -, *, /)";
			Leer operador;
		Fin Mientras
		
		Escribir "Segundo número: ";
		Leer num2;
		
		Si operador = '+' Entonces
			Escribir num1, " ", operador, " ", num2, " = ", num1+num2;		
		Fin Si
		
		Si operador = '-' Entonces
			Escribir num1, " ", operador, " ", num2, " = ", num1-num2;		
		Fin Si
		
		Si operador = '*' Entonces
			Escribir num1, " ", operador, " ", num2, " = ", num1*num2;		
		Fin Si
		
		Si operador = '/' Entonces
			Escribir num1, " ", operador, " ", num2, " = ", num1/num2;		
		Fin Si
		
		Escribir "¿Desea realiza otra operacion? s (si) | n (No): "
		Leer continuarOperando;
		
		Mientras continuarOperando <> 's' Y continuarOperando <> 'n' Hacer
			Escribir "Opción no válida. Intente nuevamente: s (si) | n (No)";
			Leer continuarOperando;
		Fin Mientras
		
	Hasta Que continuarOperando = 'n'
		
FinAlgoritmo

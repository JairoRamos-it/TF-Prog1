//Calculadora
//Este ejercicio debe solicitar dos n�meros y la operaci�n que desea
//realizar (suma, resta, multiplicaci�n o divisi�n). Luego, calcular� y
//mostrar� el resultado correspondiente seg�n la operaci�n
//seleccionada.

Algoritmo Calculadora
	Definir num1, num2 Como Real;
	Definir operador, continuarOperando Como Caracter;
	Definir numeroValido Como Logico;
	
	Repetir
		Escribir "Primer n�mero: ";
		Leer num1;
		
		Escribir "OPERACION (+, -, *, /): ";
		Leer operador;
		Mientras operador <> '+' Y operador <> '-' Y operador <> '*' Y operador <> '/' Hacer
			Escribir "Operador no v�lido. Intente nuevamente: (+, -, *, /)";
			Leer operador;
		Fin Mientras
		
		Escribir "Segundo n�mero: ";
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
		
		Escribir "�Desea realiza otra operacion? s (si) | n (No): "
		Leer continuarOperando;
		
		Mientras continuarOperando <> 's' Y continuarOperando <> 'n' Hacer
			Escribir "Opci�n no v�lida. Intente nuevamente: s (si) | n (No)";
			Leer continuarOperando;
		Fin Mientras
		
	Hasta Que continuarOperando = 'n'
		
FinAlgoritmo

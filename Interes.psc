// Inter�s
// Solicita al usuario el capital y el tiempo, y calcula el inter�s simple.
// La tasa de inter�s se encuentra precargada en el ejercicio y debe ser
// mostrada al usuario. F�rmula: inter�s = capital * tasa * tiempo

Algoritmo Interes
	Definir capital, tiempo, tasa_interes Como Real;
	
	tasa_interes <- 0.03;
	Escribir Sin Saltar "Inter�s simple actual: ", tasa_interes*100, "%"; Escribir  "";
	
	Escribir Sin Saltar "Ingrese el capital: ";
	Leer capital;
	
	Escribir Sin Saltar "Ingrese el tiempo (dias): ";
	Leer tiempo;
	
	// aplica tasa_interes a cada d�a, la ganancia crece muy r�pido
	Escribir "Inter�s simple: $", capital * tasa_interes * tiempo;
	
FinAlgoritmo

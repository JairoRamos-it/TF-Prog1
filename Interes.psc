// Interés
// Solicita al usuario el capital y el tiempo, y calcula el interés simple.
// La tasa de interés se encuentra precargada en el ejercicio y debe ser
// mostrada al usuario. Fórmula: interés = capital * tasa * tiempo

Algoritmo Interes
	Definir capital, tiempo, tasa_interes Como Real;
	
	tasa_interes <- 0.03;
	Escribir Sin Saltar "Interés simple actual: ", tasa_interes*100, "%"; Escribir  "";
	
	Escribir Sin Saltar "Ingrese el capital: ";
	Leer capital;
	
	Escribir Sin Saltar "Ingrese el tiempo (dias): ";
	Leer tiempo;
	
	// aplica tasa_interes a cada día, la ganancia crece muy rápido
	Escribir "Interés simple: $", capital * tasa_interes * tiempo;
	
FinAlgoritmo

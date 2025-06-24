//Suma de Matrices
//Crea dos matrices y calcula la suma de ambas, mostrando el
//resultado.

// Imprime una matriz en formato matematico tradicional.
// Matriz: variable dimensionada
// nombre_matriz: texto con el nombre de la matriz
// total_columnas: cantidad de columnas de la matriz
// total_filas: cantidad de filas de la matriz
Funcion ImprimirMatriz (matriz, nombre_matriz, total_filas, total_columnas)
	Definir fila_actual, columna_actual Como Entero;
	Escribir ""; Escribir nombre_matriz, ":";
	Para fila_actual <- 1 Hasta total_filas
		Para columna_actual <- 1 Hasta total_columnas
			Escribir Sin Saltar matriz[fila_actual, columna_actual], " ";
		Fin Para
		Escribir "";
	Fin Para
Fin Funcion

// Suma las matrices A y B, almacena en la matriz C
// A, B y C son variables previamente dimensionadas
Funcion Generar_Y_SumarMatrices(A, B, C, total_filas, total_columnas)
	Definir fila_actual, columna_actual Como Entero;
	Para fila_actual <- 1 Hasta total_filas Hacer
		Para columna_actual<-1 Hasta total_columnas Hacer
			// Carga de datos aleatoria
			A[fila_actual, columna_actual] <- aleatorio(0, 9);
			B[fila_actual, columna_actual] <- aleatorio(0, 9);
			// Suma de matrices
			C[fila_actual, columna_actual] <- (A[fila_actual, columna_actual] + B[fila_actual, columna_actual]);
			// Impresion detallada de calculos y carga de datos en pantalla
			Escribir "A[", fila_actual, ",", columna_actual, "] -> ", A[fila_actual, columna_actual], " + B[", fila_actual, ",", columna_actual, "] -> ", B[fila_actual, columna_actual], " = C[", fila_actual, ",", columna_actual, "] = ", C[fila_actual, columna_actual];
		Fin Para
	Fin Para
Fin Funcion

Funcion ImprimirSeparador(texto_separador)
	Escribir " ";
	Escribir "     -------------";
	Escribir "     ", texto_separador;
	Escribir "     -------------";
	Escribir " ";
Fin Funcion

Algoritmo SumaMatrices
	
	Definir A, B, C, total_columnas, total_filas Como Entero;
	Definir continuar Como Caracter;
	
	continuar <- 's';
	Mientras continuar = 's' Hacer
		Escribir Sin Saltar "Ingrese las filas: ";
		Leer total_filas;
		Escribir Sin Saltar "Ingrese las columnas: ";
		Leer total_columnas;
		
		// Si la dimension ingresada es invalida:
		Mientras total_filas <= 0 O total_columnas <= 0 Hacer
			Escribir "Ingrese ambos valores positivos. Reintente: ";
			Escribir Sin Saltar "Re-Ingrese las filas: ";
			Leer total_filas;
			Escribir Sin Saltar "Re-Ingrese las columnas: ";
			Leer total_columnas;
		Fin Mientras
		
		ImprimirSeparador("Generando...");
		
		Escribir "Dimension elegida: ", total_filas, " x ", total_columnas;
		Dimensionar A[total_filas, total_columnas], B[total_filas, total_columnas], C[total_filas, total_columnas];
		
		// Generar dos matrices aleatorias, sumarlas e imprimir los cálculos
		Generar_Y_SumarMatrices(A, B, C, total_filas, total_columnas);
		
		// Visualizar cada matriz de forma clásica como en matemáticas
		ImprimirMatriz(A, "Matriz A", total_filas, total_columnas);
		ImprimirMatriz(B, "Matriz B", total_filas, total_columnas);
		ImprimirMatriz(C, "Matriz C = A + B", total_filas, total_columnas);
		
		Repetir
			Escribir ""; Escribir Sin Saltar "¿Desea generar otra matriz? s (si) / n (no): ";
			Leer continuar;
			continuar <- Minusculas(continuar);
			Si continuar <> 'n' Y continuar <> 's' Entonces
				Escribir "Opcion no válida. Reintente. ";
			Fin Si
		Hasta Que continuar = 'n' O continuar = 's';
	
	Fin Mientras
	
	ImprimirSeparador("Saliendo...");

FinAlgoritmo

package main

import "fmt"

var analizar_anio, periodo, inicio uint64
    
func main() {
    // Se inicializa en funcion principal los valores
    
    analizar_anio = 2027
    
    periodo = 4
     
    inicio = 1995
    // Funciona de valores desde 1995 cuando paso a ser cada 4 años las elecciones
    fmt.Println("\nEn Argentina se vota cada ", periodo, " años desde ", inicio, ":\n")
    // Un año antes del año bisiesto son elecciones en Argentina (Hago excepcion 1983)
    if ((analizar_anio + 1) % periodo == 0) && (analizar_anio >= inicio) || (analizar_anio == 1983){
        fmt.Println("\t", analizar_anio, " es año electoral en Argentina.")
    } else {
        fmt.Println("\tNo es el ", analizar_anio, " año electoral en Argentina.")
    }
    fmt.Println("\n")
}

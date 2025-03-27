// Go funciona mediante paquetes, se ejecuta el principal de cada programa
package main
// Importo multiples paquetes "fmt" para salida de texto y math para operaciones matematicas
import (
// Uso notacion en escuadra y no en regla para bloques de código
    "fmt";
    "math"
)

/* 
    Se pueden declarar variables a nivel global. 
*/

var n_iteraciones float64

func main() {
    // Notación en escuadra para funcion principal
    n_iteraciones = math.Pow(10, 2)
    /* 
        Muestra la tabla con n numeros multiplos de 4
    */
    for iterador := 1.0; iterador <= n_iteraciones; iterador++ {
        // Los métodos en Go empiezan con mayuscula
        fmt.Println("\n\t4 x", iterador, "=", iterador * 4)
    }
    // Calcula si el bit esta al inicio que numero da segun cantidad de bits
    for bits := 8.0; bits <= 64.0; bits *= 2 {
        // Bloques en escuadra
        var numero float64 = 1 * math.Pow(2, bits - 1)
        // No es necesario hacer esto si son todos cero pero lo hago si se busca con otros bits
        for exponente := bits - 2; exponente >= 0.0; exponente-- {
            /* Solo se detiene hasta sumar potencias de 2 para completar
               bits faltantes */
               numero += 0 * math.Pow(2, exponente)
        }
        fmt.Println("\n1 seguido de ceros a", uint16(bits), "bits da numero", uint64(numero))
    }    
}

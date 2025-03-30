package main

import "fmt"

func fib(n uint64) uint64 {
    // Calcula de forma iterativa el enesimo termino de fibonacci
    
    primero := uint64(1)
    segundo := uint64(1)
    
    var calculado uint64
    
    for enesimo := uint64(1); enesimo <= n; enesimo++ {
        // Actualizo una variable u otra segun si n es par o no
        if (n % 2) == 0 {
            // Guardo antes de perder valor que voy a necesitar
            primero = segundo
            // Pongo lo ultimo calculado
            segundo = calculado
        } else {
            segundo = primero
            primero = calculado
        }
     // Calculo termino con los valores mas actuales
        calculado = (primero + segundo)        
    }
    
    return calculado    
}            

func main() {
// Escribe los 12 mil primeros terminos de fibonacci
    for termino := 1; termino <= 12e3; termino++ {
      // Convierto termino a tipo compatible
        compatible := uint64(termino)
      // Muestro coordenadas en espiral fibonacci
        fmt.Println("n =", compatible, ", fibonacci =", fib(compatible))
    }
}

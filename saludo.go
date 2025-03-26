package main

import "fmt"

func main() {

    var nombres = "fulano" + ", " + "mengano, "
    
    nombres = nombres + "otro."
    
    nombres = nombres + "se pueden concatenar cadenas, no como en Rust."

    var numero_a float64 = 10

    var real_a float64 = 1.5
   
    numero_b := real_a * numero_a

    numero_b *= 2
    /* 
        Valores hasta dicho momento:

            numero_a = 10, real_a = 1.5, numero_b = 30
    */
    real_a += real_a

    real_a -= 1
    // Da 32
    numero_b += real_a
    // Muestro numero_b   |   caracter unicode 3223   |   nombres
    fmt.Println(int32(numero_b), "\t|\t", "\u3223", "\t|\t", nombres)
}

package main

import (
	"fmt"
	"log"
	"os"
)

// Lee el archivo fibonacci.go: type ([]byte, error)
func main() {

	contenido, mensaje_de_error := os.ReadFile("fibonacci.go")

	if mensaje_de_error != nil {
		log.Fatal(mensaje_de_error)
	}

	fmt.Println("\n" + string(contenido[0:60]))
}

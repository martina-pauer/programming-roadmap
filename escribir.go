package main

import (
	"fmt"
	"os"
)

func escribir(nombre, texto string) {
	// Escribe datos a un archivo de texto
	// Crea archivo o abre uno existente
	archivo, mensaje := os.Create(nombre)
	// Escribe dato como texto
	_, mensaje = archivo.WriteString(texto)
	// Mensaje de log
	if mensaje != nil {
		fmt.Println("\nERROR EN ESCRIBIR ARCHIVO", nombre, ":", mensaje)
	}
	// Cierra archivo por seguridad de memoria (para que no quede referencia a archivo en memoria)
	defer archivo.Close()
} // fin de la funcion para escribir archivos

func main() {

	bisiestos, no_bisiestos := "", ""

	for anio := 2000; anio <= 2038; anio += 1 {

		fmt.Println("escribiendo año", anio)

		if anio%4 == 0 { // Guarda valores de años bisiestos
			fmt.Print(" en archivo 'bisiestos.lista'\n")
			escribir("bisiestos.lista", bisiestos+fmt.Sprintf("%d\n", anio))
			// Guardo en variable auxiliar para no perder datos
			bisiestos += fmt.Sprintf("%d\n", anio)
		} else { // Guarda valores de años que no lo son
			fmt.Print(" en archivo 'no-bisiestos.lista'\n")
			// Escribo valores a archivo correspondiente
			escribir("no-bisiestos.lista", no_bisiestos+fmt.Sprintf("%d\n", anio))
			no_bisiestos += fmt.Sprintf("%d\n", anio)
		}

	} // Cierra ciclo donde va desde un año a otro

} // Fin de la funcion principal

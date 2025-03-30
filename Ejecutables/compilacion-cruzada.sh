#!/usr/bin/bash
# Variables sys y arch para compilar a varios sistemas y arquitecturas multiples archivos en go
sys="aix"
arch="ppc64"
prefix=".."
compilados="$prefix/fibonacci $prefix/ciclos $prefix/leer $prefix/escribir $prefix/logica $prefix/saludo"
ejecutables="Ejecutables/IBM_AIX/ppc64"
# Compilo cada uno de los archivos
GOOS=$sys GOARCH=$arch go build $prefix/fibonacci.go
GOOS=$sys GOARCH=$arch go build $prefix/ciclos.go
GOOS=$sys GOARCH=$arch go build $prefix/leer.go
GOOS=$sys GOARCH=$arch go build $prefix/escribir.go
GOOS=$sys GOARCH=$arch go build $prefix/logica.go
GOOS=$sys GOARCH=$arch go build $prefix/saludo.go
# Muevo archivos ejecutables a la carpeta de ejecutables correspondiente
mv $compilados $ejecutables

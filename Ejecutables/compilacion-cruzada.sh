#!/usr/bin/bash
# Variables sys y arch para compilar a varios sistemas y arquitecturas multiples archivos en go
sys="windows"
arch="386"
prefix=".."
extension=".exe"
compilados="fibonacci$extension ciclos$extension leer$extension escribir$extension logica$extension saludo$extension"
ejecutables="Windows/32-bits"
# Compilo cada uno de los archivos
GOOS=$sys GOARCH=$arch go build $prefix/fibonacci.go
GOOS=$sys GOARCH=$arch go build $prefix/ciclos.go
GOOS=$sys GOARCH=$arch go build $prefix/leer.go
GOOS=$sys GOARCH=$arch go build $prefix/escribir.go
GOOS=$sys GOARCH=$arch go build $prefix/logica.go
GOOS=$sys GOARCH=$arch go build $prefix/saludo.go
# Muevo archivos ejecutables a la carpeta de ejecutables correspondiente
mv $compilados -t $ejecutables

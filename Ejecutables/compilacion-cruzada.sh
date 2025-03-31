#!/usr/bin/bash
# Variables sys y arch para compilar a varios sistemas y arquitecturas multiples archivos en go
sys="aix"
arch="ppc64"
prefix=".."
extension=""
compilados="$prefix/fibonacci$extension $prefix/ciclos$extension $prefix/leer$extension $prefix/escribir$extension $prefix/logica$extension $prefix/saludo$extension"
ejecutables="IBM_AIX/ppc64"
compilar="GOOS=$sys GOARCH=$arch go build $prefix"
# Compilo cada uno de los archivos
$compilar/fibonacci.go
$compilar/ciclos.go
$compilar/leer.go
$compilar/escribir.go
$compilar/logica.go
$compilar/saludo.go
# Muevo archivos ejecutables a la carpeta de ejecutables correspondiente
mv $compilados -t $ejecutables

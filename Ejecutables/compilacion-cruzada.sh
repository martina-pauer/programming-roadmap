#!/usr/bin/bash
# Variables sys y arch para compilar a varios sistemas y arquitecturas multiples archivos en go
sys="darwin"
arch="amd64"
# Compilo cada uno de los archivos
GOOS=$sys GOARCH=$arch go build fibonacci.go
GOOS=$sys GOARCH=$arch go build ciclos.go
GOOS=$sys GOARCH=$arch go build leer.go
GOOS=$sys GOARCH=$arch go build escribir.go
GOOS=$sys GOARCH=$arch go build logica.go
GOOS=$sys GOARCH=$arch go build saludo.go

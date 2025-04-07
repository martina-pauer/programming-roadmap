/* 
  Sintaxis AT&T GNU Assembly compatible con back-end GCC

    Ejemplo de suma direccionada por indice, escala y desplazamiento

    GNU Assembly para Linux x86_64 
*/
.global _start
/* Subseccion de texto */
.text
_start:
    /* Defino escritura por llamada al sistema */
/* 
    Funcion de constante 4 y argumento de constante 1 
    en registros RAX y RBX (acumulador y base e 64-bits)
*/
    mov $4, %rax
    mov $1, %rbx
/* Registros RCX(contador de 64-bits) Y RDX(dto de 64-bits) para datos sobre el texto */
    mov $salida, %rcx
    mov $caracteres, %rdx
/* Controlo interrupciones para evitar segmentation fault */
    int $0x80
    /* 
     Usa registros acumulador y base

        Estado de salida 1 para fallo en tiempo de ejecucion 
        para que la computadora sepa cque hacer si falla
    */
    mov $1, %rax
    /* Nada hace si todo va bien */
    mov $0, %rbx
/* Fin de la interrupcion, sigue todo normal */
    int $0x80
/* Subseccion de datos donde manipulo registros */
.data
salida:
/* Defino subseccion de salida */
    /* 
    Escribe resultado de:

        (%indice * escala) + (desplazamiento + base)

        (3 * 8) + (2 + 42) = 24 + 44 = 68 = "D" en el acumulador
    */
    mov $0, %rax
    mov $42, %rbx
    mov $3, %rax
    mov 2(%rbx, %rax, 8), %rax
    .ascii "\n"
    /* Digo que tome hasta el ultimo caracter de salida */
    caracteres = . - salida

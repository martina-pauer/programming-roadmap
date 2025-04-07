/* 
    GNU Assembler, hace una llamada al sistema para arqitectura
    x86_64 copiando instrucciones en distintos registros de memoria 
*/

/* inicio global con primeras instrucciones */
.global _start

.text 
_start:
    /* 
        Instruccion para copiar llamada al sistema
        de escritura en registro acumalador
    */
    mov $4, %rax
    /* 
        Argumento con descriptor de archivo para salida
        estandar, registro de base
    */
    mov $1, %rbx
    /* 
        Mensaje a escribir en registro contador
    */
    mov $msg, %rcx
    /* 
        Longitud del mensaje a escribir en registro de dato
    */
    mov $len, %rdx
    /*
        Interrupcion con locacion 0x80(128) que invoca
        procedimiento del kernel para llamadas al sistema
    */
    int $0x80
    /* 
        Devuelve estado al sistema 0(bien), 1(mal) para
        interrumpir de forma correcta ejecucion evitando
        violacion del segmento core(un segmento del corazon del kernel)
    */
    mov $1, %rax
    mov $0, %rbx
    int $0x80
/* Manipulación de datos */
.data 
msg:
    /* Las directivas empiezan en punto o terminan en dos puntos, las instrucciones son comandos */
    .ascii "\nHola\n"
    .ascii "\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\n"
    .ascii "\t-¿Cómo estás?\n"
    .ascii "\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\x0023\n\n"
    /* 
        Asigna de longitud la que tiene la direccion en memoria msg 
    */
    len = . - msg

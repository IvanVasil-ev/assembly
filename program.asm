.8086
code SEGMENT para USE16 PUBLIC 'code'
    ASSUME CS:code,DS:data,SS:stack
    START:
        mov ax,data
        mov ds,ax
        mov ah,9h
        mov dx,offset message
        int 21h
        mov ax,4C00h
        int 21h
code ends

data SEGMENT para USE16 PUBLIC 'data'
    message db 'Hello, World!$'
data ends

stack SEGMENT para USE16 STACK 'stack'
    db 256 DUP(?)
stack ends
end START

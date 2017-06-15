

;Deniz Burak


INCLUDE Irvine32.inc
.data
	;--------- Enter Data Here
	vSemester BYTE "string Goes here #1",0
	vAssignment BYTE "Another string Goes Here #2",0
	vName BYTE "Deniz Burak",0
.code
main PROC
	;--------- Enter Code Below Here
	call clrscr

	mov dh, 2
	mov dl, 12
	call gotoxy

	mov edx, offset vSemester
	call WriteString

	mov dh, 3
	mov dl, 12
	call gotoxy

	mov edx, offset vAssignment
	call WriteString

	mov dh, 4
	mov dl, 12
	call gotoxy

	mov edx, offset vName
	call WriteString

	xor ecx, ecx
	call readchar

	exit
main ENDP

END main

%include "freeglut_std.asm"

section .data
	db: window_title "HelloGL"

section .text
	global display
	global main

display:
	push 1
	push 0
	push 0
	push 0
	call glClearColor

	push GL_COLOR_BUFFER_BIT
	call glClear

	push GL_TRIANGLES
	call glBegin

	push 0
	push 0
	push 1
	call glColor3f
	push 0
	push -1
	push -1
	call glVertex3f

	push 0
	push 1
	push 0
	call glColor3f
	push 0
	push -1
	push 1
	call glVertex3f

	push 1
	push 0
	push 0
	call glColor3f
	push 0
	push 1
	push 0
	call glVertex3f

	call glEnd

	call glFlush
	call glutSwapBuffers
	ret

main:
	push ebx
	push [eax]
	call glutInit
	push GLUT_RGBA | GLUT_DOUBLE
	call glutInitDisplayMode
	push 600
	push 800
	call glutInitWindowSize

	push window_title
	call glutCreateWindow

	push display
	call glutDisplayFunc

	call glutMainLoop
	mov eax, 0
	ret

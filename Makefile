CC= gcc
CFLAGS= -I
WINDOWLIB= -lX11
OBJS= enginemain.o window.o

creationengine : $(OBJS) 
			$(CC) -o creationengine enginemain.o window.o

enginemain.o : enginemain.c 
			$(CC) -c enginemain.c

window.o : window.c 
			$(CC) -c window.c

.PHONY : clean

clean : 
			-rm creationengine $(OBJS)
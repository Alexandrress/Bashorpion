c=gcc
op=-Wall -Wextra

all : BashorpionReqRep.o BashorpionSession.o BashorpionData.o BashorpionClient.c BashorpionServer.c
	$(c) $(op)  BashorpionReqRep.o BashorpionSession.o BashorpionData.o BashorpionClient.c -o BashorpionClient.exe
	$(c) $(op)  BashorpionReqRep.o BashorpionSession.o BashorpionData.o BashorpionServer.c -o BashorpionServer.exe
BashorpionReqRep.o : BashorpionReqRep.c BashorpionReqRep.h
	$(c) $(op) -c BashorpionReqRep.c
BashorpionSession.o : BashorpionSession.c BashorpionSession.h
	$(c) $(op) -c BashorpionSession.c	
BashorpionData.o : BashorpionData.c BashorpionData.h
	$(c) $(op) -c BashorpionData.c		
	
clean :
	rm *.exe
	rm *.o

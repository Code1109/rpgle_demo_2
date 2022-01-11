
BIN_LIB=PBLADES1
LIBLIST=$(BIN_LIB) 
SHELL=/QOpenSys/usr/bin/qsh

all: justhola.sqlrpgle

%.sqlrpgle:
	system -s "CHGATR OBJ('./qrpglesrc/$*.sqlrpgle') ATR(*CCSID) VALUE(1252)"
	liblist -a $(LIBLIST);\
	system "CRTSQLRPGI OBJ($(BIN_LIB)/$*) SRCSTMF('./qrpglesrc/$*.sqlrpgle') COMMIT(*NONE) DBGVIEW(*SOURCE) OPTION(*EVENTF)" 
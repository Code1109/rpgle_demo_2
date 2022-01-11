bin_lib=cmpsys
liblist=$(bin_lib) sample
shell=/qopensys/usr/bin/qsh

all:	justhola.sqlrpgle

%.sqlrpgle:
	system -s "CHGATR OBJ('./qrpglesrc/$*.sqlrpgle') ATR(*CCSID) VALUE(1252)"
	liblist -a $(liblist);\
	system "CRTSQLRPGI OBJ($(bin_lib)/$*) SRCSTMF('./qrpglesrc/$*.sqlrpgle') COMMIT(*none) DBGVIEW(*source) " 
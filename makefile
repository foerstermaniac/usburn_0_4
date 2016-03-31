# Quick and dirty makefile

BINNAME=usburn

all:
	g++ usburn.c programmer_usb.c database.c hexfile.c calibration.c firmware.c test.c -m32 -I/usr/local/include -L. -lm -lc -L/usr/local/include -lusb $(OSFLAG) -o $(BINNAME)
#	g++ usburn.c programmer_usb.c database.c hexfile.c -lusb

clean:
	rm -f $(BINNAME)
	rm -f *.gch

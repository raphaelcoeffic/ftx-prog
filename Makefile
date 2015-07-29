
CFLAGS = -Wall -O2 -Werror \
	-I /usr/local/include

LDFLAGS = -lusb -lftdi \
	-L /usr/local/lib

PROG = ftx_prog

all:	$(PROG)

$(PROG):	$(PROG).c
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS)

clean:
	rm -f $(PROG)

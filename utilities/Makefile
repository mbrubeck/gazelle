
default: bitcode_dump gzlparse srlua-glue srlua
all: default

clean:
	rm -rf bitcode_dump.o bitcode_dump gzlparse.o gzlparse

bitcode_dump.o: bitcode_dump.c ../runtime/include/gazelle/bc_read_stream.h
	$(CC) $(CFLAGS) -o bitcode_dump.o -c bitcode_dump.c -I../runtime/include

bitcode_dump: bitcode_dump.o ../runtime/libgazelle.a
	$(CC) -o bitcode_dump bitcode_dump.o ../runtime/bc_read_stream.o

gzlparse.o: gzlparse.c ../runtime/include/gazelle/bc_read_stream.h ../runtime/include/gazelle/parse.h
	$(CC) $(CFLAGS) -o gzlparse.o -c gzlparse.c -I../runtime/include

gzlparse: gzlparse.o ../runtime/libgazelle.a
	$(CC) -o gzlparse gzlparse.o ../runtime/libgazelle.a

srlua-glue:
	$(CC) -o srlua-glue srlua-glue.c $(LUA_INCLUDE) $(LUA_LINK)

srlua:
	$(CC) -o srlua srlua.c $(LUA_INCLUDE) $(LUA_LINK)

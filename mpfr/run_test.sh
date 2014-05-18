cc $RECIPE_DIR/test.c -o test.o -L$PREFIX/lib -I$PREFIX/include -lmpfr -lgmp
./test.o
rm test.o

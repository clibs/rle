
SRC = $(wildcard deps/*/*.c)
SRC += rle.c rle_test.c

CFLAGS = -std=c99 -I deps -Wall

check: test
	@./test

test: $(SRC)
	@$(CC) $(CFLAGS) $^ -o $@

clean:
	@rm -fr test *.dSYM
.PHONY: clean

CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Wpedantic -Wshadow -Wformat=2
SOURCES = main.c book.c user.c loan.c utils.c
OBJECTS = $(SOURCES:.c=.o)

library: $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o library

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f library library.exe $(OBJECTS)

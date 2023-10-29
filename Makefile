CC := gcc

CFLAGS := `sdl2-config --cflags` -O3 --std=c99
LDFLAGS := `sdl2-config --libs` -lm -lSDL2_ttf
EXTRA_FLAGS :=

HDRS :=

SRCS := $(wildcard src/*.c)

OBJS := $(SRCS:.c=.o)

EXEC := game

# default recipe
all: compile_run
compile_run: compile
	./$(EXEC)

compile: $(OBJS) $(HDRS) Makefile
	$(CC) -o $(EXEC) $(OBJS) $(LDFLAGS) $(EXTRA_FLAGS)

debug:
	$(MAKE) EXTRA_FLAGS='-ggdb3 -O0 -fsanitize=address,undefined'

%.o: %.c $(HDRS) Makefile
	$(CC) -o $@ -c $< $(CFLAGS) $(EXTRA_FLAGS)

.PHONY: all clean compile compile_run debug wasm wasm_serve wasm_build_dir publish

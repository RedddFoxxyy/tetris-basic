# SDL Tetris

An implementation of the classic [Tetris game](https://en.wikipedia.org/wiki/Tetris) in the C programming language using the [SDL-2 library](https://www.libsdl.org/)

## Installation

## Download and install msys2 64bit
* Download msys2 64bit from here: https://www.msys2.org/

## Update msys2
* Update msys2 64bit after install by running `pacman -Syu` if pacman needs to be updated you might have to close and reopen the terminal and run `pacman -Syu` again

## Install build tools
* ```pacman -S git mingw-w64-x86_64-toolchain mingw64/mingw-w64-x86_64-SDL2 mingw64/mingw-w64-x86_64-SDL2_mixer mingw64/mingw-w64-x86_64-SDL2_image mingw64/mingw-w64-x86_64-SDL2_ttf mingw64/mingw-w64-x86_64-SDL2_net mingw64/mingw-w64-x86_64-cmake make``` 

1. Clone this repository to your system:

```sh
git clone https://github.com/olzhasar/sdl-tetris.git
```

2. [Install](https://wiki.libsdl.org/SDL2/Installation) SDL2 and SDL2_ttf on your machine

- On MacOS you can use Homebrew:

```sh
brew install sdl2 sdl2_ttf
```

3. Compile and run the project code with make

```sh
cd sdl-tetris
make
```

## Controls

- Rotate: Up arrow, W
- Move Left: Left arrow, A
- Move Right: Right arrow, D
- Soft Drop: Down arrow, S
- Hard drop: Space
- Quit: ESC

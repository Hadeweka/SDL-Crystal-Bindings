# Direct SDL bindings to Crystal

This shard allows for the direct use of all unsafe SDL functions.
It is designed to use as a low-level foundation for your own libraries. 

Note that it is NOT recommended to use these bindings unless you want to write your own wrappers (which are not provided).
The bindings here are unsafe and are therefore able to crash your program.

## Requirements

You need to have SDL installed or the SDL library files accessible by Crystal for linking and running.

Currently, you also need to have SDL_image, SDL_mixer and SDL_ttf available.

## Usage

Simply add this shard (`sdl-crystal-bindings`) to your `shard.yml`.
This repository comes with pre-generated binding files.

Then, use `require "sdl-crystal-bindings"`.

Regular SDL functions, structs, enums, unions and constants are accessible using the `LibSDL` namespace, while
preprocessor macro functions are accessible using the `LibSDLMacro` module. This separation is due to the fact
that no functions can be added to the Crystal `lib` modules, which do not already exist in C. Since these are
simple macro expressions, they have no real analogon and thus need to be implemented separately.

Note that also the syntax differs from regular SDL in many aspects and is more oriented to Crystal (for example,
functions are in snake_case, while structs are in CamelCase).

## Generating new bindings

To update the bindings, you need to have Ruby, gcc and clang installed on your system (ideally Linux or might not work).

Just call `ruby generate.rb` from the main directory of this shard and the `bindings.cr` file will be generated or updated.
The script will download the newest SDL headers and generate automated bindings.

If you need to add manual changes, please either use the filters from the script to exclude structs and/or modify the
files in the `additions` directory to add specific bindings manually.

If you encounter any problems while generating the bindings, please open an issue.

## Roadmap

### Version 0.0.1

#### Features

* Binding generator
* Working bindings
* Bindings for sdl_image, sdl_mixer and sdl_ttf
* Basic set of examples

### Version 0.1.0

#### Features

* [ ] More examples
* [ ] Continuous integration

#### Breaking changes

* [ ] Examples in separate submodule
* [ ] Decoupling of the different libraries

#### Usability

* [ ] Fix weird formatting in some header files

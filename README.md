# Direct SDL bindings to Crystal

This shard allows for the direct use of all unsafe SDL functions.
It is designed to use as a low-level foundation for your own libraries. 

Note that it is NOT recommended to use these bindings unless you want to write your own wrappers (which are not provided).
The bindings here are unsafe and are therefore able to crash your program.

## Requirements

You need to have SDL installed or the SDL library files accessible by Crystal for linking and running.

## Usage

Simply add this shard to your `shard.yml`.
This repository comes with pre-generated binding files.

Then, use `require "bind-sdl-crystal"`.

## Generating new bindings

To update the bindings, you need to have Ruby, gcc and clang installed on your system (ideally Linux or might not work).

Just call `ruby generate.rb` from the main directory of this shard and the `bindings.cr` file will be generated or updated.
The script will download the newest SDL headers and generate automated bindings.

If you need to add manual changes, please either use the filters from the script to exclude structs and/or modify the
files in the `additions` directory to add specific bindings manually.

If you encounter any problems while generating the bindings, please open an issue.

## Roadmap
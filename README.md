# Elixir Rust NIF Starter

Example application for implementing Rust NIFs in Elixir using the Elixir [Rustler](https://github.com/rusterlium/rustler) library with tweaks for Apple Silicon. 

## Installation

These are installation instructions for Mac OS, including some tweaks to get this to work on Apple Silicon using Homebrew. 

### Install Elixir

```bash
brew install rustup
```

### Install Rust

```bash
brew install rustup

rustup-init
```

### Create a new Elixir project

```elixir
mix new nif_starter

add {:rustler, "~> 0.22.2"}

mix deps.get
```

### Create a new Rust package 

```bash
mix rustler new

Module Name > NifStarter

Library name > nif_starter
```

### Update native/nif_starter/.cargo/config 

If you are using Apple Silicon you will need to update the .cargo/config file to build the Rust package

```rust
[target.'cfg(target_os = "macos")']
rustflags = [
    "-C", "link-arg=-undefined",
    "-C", "link-arg=dynamic_lookup",
]
```

### Install crates and build Rust package

```bash
cargo build
```

### Open IEx and call the NIF 

```elixir
iex -S mix

NifStarter.add(1, 2)
```

### Resources

- [Elixir](https://elixir-lang.org/)
- [Rust](https://www.rust-lang.org/)
- [Rustler](https://github.com/rusterlium/rustler)

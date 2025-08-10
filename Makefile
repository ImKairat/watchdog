# Watchdog Makefile

.PHONY: run build release test clean

# Run program
run:
	@zig build -Doptimize=ReleaseFast run

# Build binary
build:
	@zig build

# Release build
release:
	@zig build -Doptimize=ReleaseSafe

# Run tests  
test:
	@zig build test

# Clean build artifacts
clean:
	@rm -rf zig-out .zig-cache
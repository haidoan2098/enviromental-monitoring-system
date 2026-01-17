# Makefile for environmental_monitor_app (Yocto-ready)

# -----------------------------
# Compiler & flags (override by Yocto)
# -----------------------------
CC ?= arm-poky-linux-gnueabi-gcc
CFLAGS ?= -Wall -Wextra
CFLAGS += -Iinc
LDFLAGS ?=

# Sysroot for Yocto toolchain (set by environment if needed)
SYSROOT ?= $(shell $(CC) --print-sysroot)
CFLAGS += --sysroot=$(SYSROOT)
LDFLAGS += --sysroot=$(SYSROOT)

# -----------------------------
# Directories
# -----------------------------
SRCDIR := src
INCDIR := inc
OBJDIR := build

# -----------------------------
# Files
# -----------------------------
SRCS := $(wildcard $(SRCDIR)/*.c)
OBJS := $(patsubst $(SRCDIR)/%.c,$(OBJDIR)/%.o,$(SRCS))
TARGET := env_monitor_app

# -----------------------------
# Default target
# -----------------------------
all: $(TARGET)

# Link
$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^

# Compile
$(OBJDIR)/%.o: $(SRCDIR)/%.c | $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Create build dir if missing
$(OBJDIR):
	mkdir -p $(OBJDIR)

# Clean
clean:
	rm -rf $(OBJDIR) $(TARGET)

# Phony targets
.PHONY: all clean

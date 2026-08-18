CXX ?= g++
CXXFLAGS ?= -Wall -Wextra -std=c++11
LDFLAGS ?=

TARGET := env_monitor_app
SRCS := main.cpp
OBJS := $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean

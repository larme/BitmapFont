CC  = 	g++
CFLAGS = -O2 -g -Wall -c
SOURCES = BitmapFont.cpp
OBJECTS = $(SOURCES:.cpp=.o)
TARGET = BitmapFont

all: $(SOURCES) $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@

%.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(OBJECTS) $(TARGET)
	
ASC12: $(TARGET)
	./$(TARGET) font/ASC12 12 1 1 0x20

ASC16: $(TARGET)
	./$(TARGET) font/ASC16 16 1 1 0x00

ASC48: $(TARGET)
	./$(TARGET) font/ASC48 144 3 1 0x20

HZK12: $(TARGET)
	./$(TARGET) font/HZK12 24 2 2 0xA1

HZK16: $(TARGET)
	./$(TARGET) font/HZK16 32 2 2 0xA1
HZK16F: $(TARGET)
	./$(TARGET) font/HZK16F 32 2 2 0xA1
HZK16S: $(TARGET)
	./$(TARGET) font/HZK16S 32 2 2 0xA1

HZK24F: $(TARGET)
	./$(TARGET) font/HZK24F 72 3 2 0xB0
HZK24H: $(TARGET)
	./$(TARGET) font/HZK24H 72 3 2 0xB0
HZK24S: $(TARGET)
	./$(TARGET) font/HZK24S 72 3 2 0xB0
HZK24T: $(TARGET)
	./$(TARGET) font/HZK24T 72 3 2 0xA1

HZK32: $(TARGET)
	./$(TARGET) font/HZK32 128 4 2 0xA1

HZK40S: $(TARGET)
	./$(TARGET) font/HZK40S 200 5 2 0xB0
HZK40T: $(TARGET)
	./$(TARGET) font/HZK40T 200 5 2 0xA1

HZK48S: $(TARGET)
	./$(TARGET) font/HZK48S 288 6 2 0xB0
HZK48T: $(TARGET)
	./$(TARGET) font/HZK48T 288 6 2 0xA1
HZK48: $(TARGET)
	./$(TARGET) font/HZK48 288 6 2 0xA1
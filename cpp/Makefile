.PHONY: all add_person list_person lean

all: add_person list_person
	@echo "[+] build all"

add_person: add_person.cc addressbook.pb.cc addressbook.pb.h
	@echo "[+] build add_person"
	pkg-config --cflags protobuf # fails if protobuf is not installed
	c++ -std=c++11 add_person.cc addressbook.pb.cc -o add_person `pkg-config --cflags --libs protobuf`

list_person: list_person.cc addressbook.pb.cc addressbook.pb.h
	@echo "[+] build list_person"
	pkg-config --cflags protobuf # fails if protobuf is not installed
	c++ -std=c++11 list_person.cc addressbook.pb.cc -o list_person `pkg-config --cflags --libs protobuf`

addressbook.pb.cc: proto/addressbook.proto
	@echo "[+] build addressbook.pb.cc (also addressbook.pb.h)"
	protoc -I=proto --cpp_out=. proto/addressbook.proto

clean:
	@echo "[+] clean"
	rm -f add_person list_person
	rm -f addressbook.pb.cc addressbook.pb.h

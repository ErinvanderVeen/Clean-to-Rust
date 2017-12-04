RUSTDEPS:= -l -ldl -l -lpthread -l -lgcc_s -l -lc -l -lm -l -lrt -l -lutil
CLIBS:=-l librust.a
CLEANFILES:= clean
EXE:= clean_rust

all: librust *.icl
	clm $(CLIBS) $(RUSTDEPS) $(CLEANFILES) -o $(EXE)

librust: rust.rs
	rustc rust.rs --crate-type staticlib

clean:
	$(RM) -r "Clean System Files" $(EXE) librust.a

run: all
	./$(EXE)

INCLUDES:=-I $$CLEAN_HOME/lib/Platform -I $$CLEAN_HOME/lib/Generics -I $$CLEAN_HOME/lib/StdLib
FLAGS:=-no-opt-link -l -no-pie -l -static
CLIBS:=-l rust.o
EXE:= clean

all: rust *.icl
	clm $(FLAGS) $(INCLUDES) $(CLIBS) $(EXE) -o $(EXE)

rust: rust.rs
	rustc rust.rs --crate-type staticlib --emit obj

clean:
	$(RM) -r "Clean System Files" $(EXE) IPC.o

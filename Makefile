LATEXMK = latexmk

.PHONY: all clean

all:
	$(LATEXMK) -pdf

clean:
	$(LATEXMK) -C
	rmdir build

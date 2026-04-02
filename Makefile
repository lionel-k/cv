.PHONY: all clean cv

CC = xelatex
VARIANT_DIR = variants/senior-software-engineer
CV_MAIN = $(VARIANT_DIR)/cv.tex
JOBNAME = senior-software-engineer
SECTION_SRCS := $(wildcard $(VARIANT_DIR)/sections/*.tex)

# Default: build senior software engineer CV (PDF named $(JOBNAME).pdf in variant dir)
all: $(VARIANT_DIR)/$(JOBNAME).pdf

cv: all

$(VARIANT_DIR)/$(JOBNAME).pdf: $(CV_MAIN) $(SECTION_SRCS) awesome-cv.cls
	$(CC) -interaction=nonstopmode -jobname=$(JOBNAME) -output-directory=$(VARIANT_DIR) $(CV_MAIN)

clean:
	rm -f $(VARIANT_DIR)/$(JOBNAME).pdf
	rm -f $(VARIANT_DIR)/*.aux $(VARIANT_DIR)/*.log $(VARIANT_DIR)/*.out $(VARIANT_DIR)/*.fdb_latexmk $(VARIANT_DIR)/*.fls $(VARIANT_DIR)/*.synctex.gz

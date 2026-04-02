.PHONY: all clean cv dba

CC = xelatex

# Senior software engineer (default)
VARIANT_DIR = variants/senior-software-engineer
CV_MAIN = $(VARIANT_DIR)/cv.tex
JOBNAME = senior-software-engineer
SECTION_SRCS := $(wildcard $(VARIANT_DIR)/sections/*.tex)

# Database expert / PostgreSQL-focused variant
DBA_DIR = variants/database-expert
DBA_MAIN = $(DBA_DIR)/cv.tex
DBA_JOBNAME = database-expert
DBA_SECTION_SRCS := $(wildcard $(DBA_DIR)/sections/*.tex)

# Default: build senior software engineer CV (PDF named $(JOBNAME).pdf in variant dir)
all: $(VARIANT_DIR)/$(JOBNAME).pdf

cv: all

dba: $(DBA_DIR)/$(DBA_JOBNAME).pdf

$(VARIANT_DIR)/$(JOBNAME).pdf: $(CV_MAIN) $(SECTION_SRCS) awesome-cv.cls
	$(CC) -interaction=nonstopmode -jobname=$(JOBNAME) -output-directory=$(VARIANT_DIR) $(CV_MAIN)

$(DBA_DIR)/$(DBA_JOBNAME).pdf: $(DBA_MAIN) $(DBA_SECTION_SRCS) awesome-cv.cls
	$(CC) -interaction=nonstopmode -jobname=$(DBA_JOBNAME) -output-directory=$(DBA_DIR) $(DBA_MAIN)

clean:
	rm -f $(VARIANT_DIR)/$(JOBNAME).pdf
	rm -f $(VARIANT_DIR)/*.aux $(VARIANT_DIR)/*.log $(VARIANT_DIR)/*.out $(VARIANT_DIR)/*.fdb_latexmk $(VARIANT_DIR)/*.fls $(VARIANT_DIR)/*.synctex.gz
	rm -f $(DBA_DIR)/$(DBA_JOBNAME).pdf
	rm -f $(DBA_DIR)/*.aux $(DBA_DIR)/*.log $(DBA_DIR)/*.out $(DBA_DIR)/*.fdb_latexmk $(DBA_DIR)/*.fls $(DBA_DIR)/*.synctex.gz

.PHONY: all clean cv dba sse-fr

CC = xelatex

# Senior software engineer (default)
VARIANT_DIR = variants/senior-software-engineer
CV_MAIN = $(VARIANT_DIR)/cv.tex
JOBNAME = senior-software-engineer
SECTION_SRCS := $(wildcard $(VARIANT_DIR)/sections/*.tex)

# Senior software engineer (French)
FR_DIR = variants/senior-software-engineer-fr
FR_MAIN = $(FR_DIR)/cv.tex
FR_JOBNAME = senior-software-engineer-fr
FR_SECTION_SRCS := $(wildcard $(FR_DIR)/sections/*.tex)

# Database expert / PostgreSQL-focused variant
DBA_DIR = variants/database-expert
DBA_MAIN = $(DBA_DIR)/cv.tex
DBA_JOBNAME = database-expert
DBA_SECTION_SRCS := $(wildcard $(DBA_DIR)/sections/*.tex)

# Default: build senior software engineer CVs (EN + FR)
all: $(VARIANT_DIR)/$(JOBNAME).pdf $(FR_DIR)/$(FR_JOBNAME).pdf

cv: all

sse-fr: $(FR_DIR)/$(FR_JOBNAME).pdf

dba: $(DBA_DIR)/$(DBA_JOBNAME).pdf

$(VARIANT_DIR)/$(JOBNAME).pdf: $(CV_MAIN) $(SECTION_SRCS) awesome-cv.cls
	$(CC) -interaction=nonstopmode -jobname=$(JOBNAME) -output-directory=$(VARIANT_DIR) $(CV_MAIN)

$(FR_DIR)/$(FR_JOBNAME).pdf: $(FR_MAIN) $(FR_SECTION_SRCS) awesome-cv.cls
	$(CC) -interaction=nonstopmode -jobname=$(FR_JOBNAME) -output-directory=$(FR_DIR) $(FR_MAIN)

$(DBA_DIR)/$(DBA_JOBNAME).pdf: $(DBA_MAIN) $(DBA_SECTION_SRCS) awesome-cv.cls
	$(CC) -interaction=nonstopmode -jobname=$(DBA_JOBNAME) -output-directory=$(DBA_DIR) $(DBA_MAIN)

clean:
	rm -f $(VARIANT_DIR)/$(JOBNAME).pdf
	rm -f $(VARIANT_DIR)/*.aux $(VARIANT_DIR)/*.log $(VARIANT_DIR)/*.out $(VARIANT_DIR)/*.fdb_latexmk $(VARIANT_DIR)/*.fls $(VARIANT_DIR)/*.synctex.gz
	rm -f $(FR_DIR)/$(FR_JOBNAME).pdf
	rm -f $(FR_DIR)/*.aux $(FR_DIR)/*.log $(FR_DIR)/*.out $(FR_DIR)/*.fdb_latexmk $(FR_DIR)/*.fls $(FR_DIR)/*.synctex.gz
	rm -f $(DBA_DIR)/$(DBA_JOBNAME).pdf
	rm -f $(DBA_DIR)/*.aux $(DBA_DIR)/*.log $(DBA_DIR)/*.out $(DBA_DIR)/*.fdb_latexmk $(DBA_DIR)/*.fls $(DBA_DIR)/*.synctex.gz

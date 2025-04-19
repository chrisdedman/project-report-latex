SOURCES=template_final_report.tex
OUTPUT=template_final_report.pdf
INTERMEDIATE_DIR=bin

all: $(OUTPUT)

# How to generate the PDF from the LaTeX source
$(OUTPUT): $(SOURCES)
	mkdir -p $(INTERMEDIATE_DIR)
	pdflatex -output-directory=$(INTERMEDIATE_DIR) $(SOURCES)
	mv $(INTERMEDIATE_DIR)/$(OUTPUT) .

# Clean up intermediate files
clean:
	rm -f $(INTERMEDIATE_DIR)/*
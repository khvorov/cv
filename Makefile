CV_TEX=cv.tex
CV_PDF=cv.pdf
OUTPUT_PDF=cv_dmitry_khvorov.pdf

all: $(OUTPUT_PDF)

$(OUTPUT_PDF): $(CV_PDF)
	mv $(CV_PDF) $(OUTPUT_PDF)

$(CV_PDF): $(CV_TEX)
	xelatex $(CV_TEX)

clean:
	rm -f $(CV_PDF) *.aux *.log *.out

.PHONY: all clean

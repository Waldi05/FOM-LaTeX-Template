IF "%1" == "en" (
    lualatex --jobname=thesis_englisch  "\def\FOMEN{}\input{thesis_main.tex}"
    biber thesis_englisch
    lualatex --jobname=thesis_englisch  "\def\FOMEN{}\input{thesis_main.tex}"
    lualatex --jobname=thesis_englisch  "\def\FOMEN{}\input{thesis_main.tex}"
    thesis_englisch.pdf
) ELSE (
    lualatex thesis_main.tex
    biber thesis_main
    lualatex thesis_main.tex
    lualatex thesis_main.tex
	del *.bbl /f /q
	del *.blg /f /q
	del *.aux /f /q
	del *.bcf /f /q
	del *.lof /f /q
	del *.log /f /q
	del *.lot /f /q
	del *.nls /f /q
	del *.toc /f /q
	del *.run.xml /f /q
	del *.anh /f /q
	del *.loe /f /q
	del *.sub /f /q
	del *.suc /f /q
	del *.syc /f /q
	del *.sym /f /q
	del *.tdo /f /q

	thesis_main.pdf
    
	del *.out /f /q
	del *.ilg /f /q
	del *.nlo /f /q
	del *.nls /f /q
	del *.lot /f /q
)

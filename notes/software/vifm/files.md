# Открытие & просмотр файлов
`filextype шаблон1,шаблон2 команда,команда2`
`fileviewer шаблон1,шаблон2 команда`

```python
# PDF
filextype {*.pdf},<application/pdf> zathura %c %i &, apvlv %c, xpdf %c
fileviewer {*.pdf},<application/pdf> pdftotext -nopgbrk %c -
```

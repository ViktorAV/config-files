# Комманды
```python
command! df df -h %m 2> /dev/null
command! diff vim -d %f %F
command! zip zip -r %c.zip %f
command! run !! ./%f
command! make !!make %a
command! mkcd :mkdir %a | cd %a
command! vgrep vim "+grep %a"
command! reload :write | restart full
```

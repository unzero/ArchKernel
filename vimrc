"SCRIPT DE CONFIGURACION DE VIM - CIRO IVAN GARCIA - UNIVERSIDAD NACIONAL DE COLOMBIA

"NUMEROS DE LINEA
set number
"WRAP EN LINEAS
set wrap 
"EMPAREJAMIENTO DE PARENTESIS
"set matchtime
"ACTIVAR EL COLOREADO DE PARALABRAS CLAVES
syntax on
"EL ESQUEMA DE COLORES A USAR
colorscheme delek
"ACTIVA EL RECONOCIMIENTO DE ARCHIVOS
filetype on 

"IDENTRACION DE ARCHIVOS
filetype plugin indent on
set expandtab
set shiftwidth=3
set softtabstop=3
"ACTIVACION DEL DICCIONARIO 
"PARA GENRAR EL DICCIONARIO SE DEBE OBTENER EL .AFF Y .DIC DEL IDIOMA CORRECTO 
"LUEGO mkspell es es_CO
"SUPONIENDO QUE EL DICCIONARIO SE LLAMA es_CO.AFF Y es_CO.DIC
nnoremap <F12> :setlocal spell spelllang=es<CR>


"GRUPO DE COMANDOS PARA JAVA
augroup javagroup 
"AUTOIDENTACION DE LOS ARCHIVOS .java
"autocmd BufWritePre *.java :normal gg=G
"COMANDO DE ABREVIACION PARA JAVA
autocmd FileType java :iabbrev <buffer> syso System.out.println();<esc>hi
augroup END

"GRUPO DE COMANDOS PARA C++
augroup cppgroup
autocmd BufNewFile *.cpp :r /home/ui/header/cpp_header.cpp
autocmd FileType cpp  :iabbrev <buffer> include #include<><left>
"autocmd BufWritePre *.cpp :normal gg=G
augroup END

"GRUPO DE COMANDOS PARA PYTHON
augroup pythonpy
autocmd BufNewFile *.py :r /home/ui/header/py_header.py
augroup END

"HEADER PARA LOS ARCHIVOS LATEX
"autocmd FileType tex :iabbrev <buffer> header <esc>:r /home/unzero/header/preamble.tex
autocmd BufNewFile *.tex :r /home/ui/header/preamble.tex

"UTILIDADES VARIAS
"EN CUALQUIER ARCHIVO CONVIERTE EN MAYUSCULAS TODA LA PALABRA CNT+U
inoremap <c-u> <esc>veUi
nnoremap <c-u> <esc>veU
"CAMBIO DE ESCAPE POR kj
inoremap kj <esc>

"UNA ABREVIACION
"iabbrev map #include<map>

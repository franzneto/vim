""CONFIGURAÇÕES PADRÃO"

set autoindent
set shiftwidth=4
set nu! 
map q :quit<CR>
set incsearch
set wildmenu
set confirm
set mouse=a
set title

"Fechamento automático de chaves, aspas, parentesis, ponto e virgula"

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

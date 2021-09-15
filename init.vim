call plug#begin()
Plug 'mhartington/oceanic-next'
Plug 'arcticicestudio/nord-vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'ianks/vim-tsx'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'vimlab/split-term.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ap/vim-css-color'
Plug 'kien/rainbow_parentheses.vim'
Plug 'bkad/camelcasemotion'
Plug 'justinmk/vim-sneak'
Plug 'scrooloose/nerdtree'
Plug 'dart-lang/dart-vim-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'thosakwe/vim-flutter'
"Plug 'guns/vim-sexp'
"Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'leafgarland/typescript-vim'
Plug 'Raku/vim-raku'
Plug 'lervag/vimtex'
" Plug 'vimwiki/vimwiki'
Plug 'wannesm/wmgraphviz.vim'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'pantharshit00/vim-prisma'
Plug 'ziglang/zig.vim'
call plug#end()

" r markdown
	" configuration for vim-pandoc and vim-rmarkdown
	let g:pandoc#modules#disabled = ["folding", "spell"]
	let g:pandoc#syntax#conceal#use = 0

" vimwiki
	"let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
	"let g:vimwiki_autowriteall = 1

" svelte
	let g:svelte_indent_script = 0
	let g:svelte_indent_style = 0

" typescript
	if has("autocmd")
		au BufNewFile,BufRead *.ts setlocal filetype=typescript
	endif

" Theme
	syntax enable
	let g:oceanic_next_terminal_bold = 1
	let g:oceanic_next_terminal_italic = 1
	let g:airline_theme='oceanicnext'
	" colorscheme OceanicNext
	colorscheme nord

	if (has("termguicolors"))
		set termguicolors
	endif

" Some Basics
	set expandtab "expand tabs to spaces

	set tabstop=2
	set softtabstop=2
	set shiftwidth=2
	set noexpandtab
	set autoindent

	set ignorecase
	set smartcase

	" let mapleader=','
	map <space> <leader>
	no <CR> :noh<CR>
	map <silent> <leader><leader>v :source ~/.config/nvim/init.vim<CR>:PlugInstall<CR>
	cmap w!! %!sudo tee > /dev/null %

	au BufNewFile,BufRead *.ts setlocal filetype=typescript
	au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

	set nocompatible
	filetype plugin on
	syntax on
	let enconding='utf-8'
	set number relativenumber

" Flutter Coc
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)

" NERDTree
	nnoremap <silent> ,a :NERDTreeToggle<CR>
	nmap <leader>nf :NERDTreeFind<CR>
	" the ignore patterns are regular expression strings and seprated by comma
	let NERDTreeIgnore = ['\.pyc$', '^__pycache__$']

	let NERDTreeStatusline="%{exists('b:NERDTree')?fnamemodify(b:NERDTree.root.path.str(), ':~'):''}"

" camel case motion
	let g:camelcasemotion_key = '<leader>'

	"map <silent> w <Plug>CamelCaseMotion_w
	"map <silent> b <Plug>CamelCaseMotion_b
	"map <silent> e <Plug>CamelCaseMotion_e
	"map <silent> ge <Plug>CamelCaseMotion_ge
	"sunmap w
	"sunmap b
	"sunmap e
	"sunmap ge

" sneak
	map f <Plug>Sneak_f
	map F <Plug>Sneak_F
	map t <Plug>Sneak_t
	map T <Plug>Sneak_T

	let g:sneak#label = 1

" rainbow parentheses
	let g:rbpt_colorpairs = [
		\ ['brown',       'RoyalBlue3'],
		\ ['Darkblue',    'SeaGreen3'],
		\ ['darkgray',    'DarkOrchid3'],
		\ ['darkgreen',   'firebrick3'],
		\ ['darkcyan',    'RoyalBlue3'],
		\ ['darkred',     'SeaGreen3'],
		\ ['darkmagenta', 'DarkOrchid3'],
		\ ['brown',       'firebrick3'],
		\ ['gray',        'RoyalBlue3'],
		\ ['black',       'SeaGreen3'],
		\ ['darkmagenta', 'DarkOrchid3'],
		\ ['Darkblue',    'firebrick3'],
		\ ['darkgreen',   'RoyalBlue3'],
		\ ['darkcyan',    'SeaGreen3'],
		\ ['darkred',     'DarkOrchid3'],
		\ ['red',         'firebrick3'],
		\ ]
	let g:rbpt_max = 16
	let g:rbpt_loadcmd_toggle = 0

	au VimEnter * RainbowParenthesesToggle
	au Syntax * RainbowParenthesesLoadRound
	au Syntax * RainbowParenthesesLoadSquare
	au Syntax * RainbowParenthesesLoadBraces

" Markdown
	let g:vim_markdown_strikethrough = 1

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Emmet
	let g:user_emmet_expandabbr_key = '<C-y>,'

" Easy Motion
	map <leader>f <Plug>(easymotion-bd-f)
	nmap <leader>f <Plug>(easymotion-overwin-f)

" FZF & Silversearch AG
	nnoremap <leader>o :FZF<CR>
	map <leader>/ :Ag<CR>
	map <leader>% :Rg<CR>

	let $FZF_DEFAULT_COMMAND = 'ag -g ""'
	let $FZF_DEFAULT_OPTS='--height 96% --reverse --preview "bat {}"'

" Buffers
	nnoremap <silent> <c-n> :bn<CR> " (N)ext buffer
	nnoremap <silent> <c-p> :bp<CR> " (P)revious buffer
	nnoremap <silent> <leader>x :bdelete<CR> " (D)elete the current buffer
	nnoremap <silent> <leader>bu :bunload<CR> " (U)nload the current buffer

" Airline
	let g:airline#extensions#tabline#enabled = 2
	let g:airline#extensions#tabline#fnamemod = ':t'
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
	let g:airline#extensions#tabline#right_sep = ' '
	let g:airline#extensions#tabline#right_alt_sep = '|'
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#buffer_nr_show = 1
	let g:airline_left_sep = ' '
	let g:airline_left_alt_sep = '|'
	let g:airline_right_sep = ' '
	let g:airline_right_alt_sep = '|'

" Prettier
	nmap <leader>py <Plug>(Prettier)
	let g:prettier#autoformat = 1
	let g:prettier#autoformat_require_pragma = 0

" Terminal
	nmap <leader>tt :TTerm<CR>
	nmap <leader>th :Term<CR>
	nmap <leader>tv :VTerm<CR>

" Moving between vim panes
	nmap <C-j> <C-w>j
	nmap <C-k> <C-w>k
	nmap <C-h> <C-w>h
	nmap <C-l> <C-w>l

" easier moving of code blocks
	nmap < <<<ESC>
	nmap > >><ESC>
	vnoremap < <gv
	vnoremap > >gv

" Creating new Lines
	nmap g<C-O> O<ESC>j
	nmap gO o<ESC>k

" forces you to use hjkl to move around and gives arrows new functionality
	no <down> ddp
	no <up> ddkP
	no <right> <Nop>
	no <left> <Nop>
	ino <down> <Nop>
	ino <up> <Nop>
	ino <right> <Nop>
	ino <left> <Nop>
	vno <down> <Nop>
	vno <up> <Nop>
	vno <right> <Nop>
	vno <left> <Nop>

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

"I really hate that things don't auto-center
	nmap G Gzz
	nmap n nzz
	nmap N Nzz
	nmap { {zz
	nmap } }zz

	nmap j gjzz
	nmap k gkzz

"typos correction
	iabbr ture true
	iabbr flase false

" Copy to clipboard
	vnoremap  <leader>y  "+y
	nnoremap  <leader>Y  "+yg_
	nnoremap  <leader>y  "+y
	nnoremap  <leader>yy  "+yy

" Paste from clipboard
	nnoremap <leader>p "+p
	nnoremap <leader>P "+P
	vnoremap <leader>p "+p
	vnoremap <leader>P "+P

" Search under cursor
	nnoremap <leader>s *

" <esc> key
	inoremap <Esc> <Esc>`^

" sysvm
	au BufRead,BufNewFile *.sys set filetype=sys

" open new split panes to right and below
	set splitright
	set splitbelow
" turn terminal to normal mode with escape
	"tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
	au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
	function! OpenTerminal()
		split term://bash
		resize 10
	endfunction
	nnoremap <c-t> :call OpenTerminal()<CR>

" use alt+hjkl to move between split/vsplit panels
	tnoremap <A-h> <C-\><C-n><C-w>h
	tnoremap <A-j> <C-\><C-n><C-w>j
	tnoremap <A-k> <C-\><C-n><C-w>k
	tnoremap <A-l> <C-\><C-n><C-w>l
	nnoremap <A-h> <C-w>h
	nnoremap <A-j> <C-w>j
	nnoremap <A-k> <C-w>k
	nnoremap <A-l> <C-w>l

" latex
	autocmd BufEnter *.tex set foldmethod=expr
	autocmd BufEnter *.tex set foldexpr=vimtex#fold#level(v:lnum)
	autocmd BufEnter *.tex set foldexpr=vimtext#fold#text()

	let g:tex_flavor  = 'latex'
	let g:tex_conceal = ''
	let g:vimtex_fold_manual = 1
	let g:vimtex_latexmk_continuous = 1
	let g:vimtex_compiler_progname = 'nvr'

	let g:vimtex_view_method = 'zathura'

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %


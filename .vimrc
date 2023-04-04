" Joe Benjamin vimrc... 
set nocompatible

call plug#begin('~/.vim/plugged')
" Plug 'kana/vim-textobj-entire'
Plug 'sainnhe/sonokai'
Plug 'joedbenjamin/pixelemconverter'
Plug 'styled-components/vim-styled-components'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree'
" Plug 'scrooloose/syntastic'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/jsonc.vim'
Plug 'SirVer/ultisnips'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'ianks/vim-tsx'
Plug 'tpope/vim-repeat'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
" auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
"Search tool for vim
Plug 'rking/ag.vim'
" Edit selected text in new window/tab/region
Plug 'chrisbra/NrrwRgn'
" Themes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-one'
Plug 'dylanaraps/wal.vim'
Plug 'mhartington/oceanic-next'
Plug 'wadackel/vim-dogrun'
Plug 'arzg/vim-colors-xcode'
Plug 'altercation/vim-colors-solarized'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'OmniSharp/omnisharp-vim'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'itspriddle/ZoomWin'
Plug 'vim-scripts/ZoomWin'
Plug 'zefei/simple-dark'
Plug 'skywind3000/asyncrun.vim'
Plug 'hashivim/vim-terraform'
" Plug 'dense-analysis/ale'
" Plug 'ervandew/supertab'
" Plug 'vim-syntastic/syntastic'
Plug 'github/copilot.vim'
call plug#end()

set modifiable
" set hidden
set autoread
" Settings
" call :set backup to create a backup of file with the .bak extension
" the .bak will only have the prev saved version
set backupext=.bak
" adds visual command \"_j\" to justify a block of text
packadd! justify 
" enable syntax and plugins (for netrw)
syntax enable
syntax on
filetype indent plugin on
" set omnifunc=syntaxcomplete#Complete
" set spell spelllang=en_us
let mapleader = ","
set number
" set termguicolors " Enables 24-bit RGB color
set list
set tabstop=4
set shiftwidth=4
set expandtab
set shiftwidth=2
set softtabstop=2
set relativenumber
set path+=** " search directories upwards and downwards
set wildmenu
set incsearch
set smartcase " automatically switch to case-sensitive when using uppercase
set ignorecase
set noswapfile
set cursorline
set lazyredraw " screen will not redraw while executing macros
set formatoptions+=j " always uses spaces instead of tab characters
set clipboard+=unnamedplus " ALWAYS use the clipboard for ALL operations no need to specify '+' and/or '*' registers 

" command maps
cnoremap jk <c-c>


" insert maps 

" open and close char with empty line 
inoremap ii' ''<Esc>i<CR><CR><Esc>k<S-s>
inoremap ii` ``<Esc>i<CR><CR><Esc>k<S-s>
inoremap ii" ""<Esc>i<CR><CR><Esc>k<S-s>
inoremap ii( ()<Esc>i<CR><CR><Esc>k<S-s>
inoremap ii) ()<Esc>i<CR><CR><Esc>k<S-s>
inoremap ii[ []<Esc>i<CR><CR><Esc>k<S-s>
inoremap ii] []<Esc>i<CR><CR><Esc>k<S-s>
inoremap ii{ {}<Esc>i<CR><CR><Esc>k<S-s>
inoremap ii} {}<Esc>i<CR><CR><Esc>k<S-s>


" open and close char
inoremap <leader>' ''<Esc>i
inoremap <leader>` ``<Esc>i
inoremap <leader>" ""<Esc>i
inoremap <leader>( ()<Esc>i
inoremap <leader>[ []<Esc>i
inoremap <leader>{ {}<Esc>i

inoremap jl <Esc>la
inoremap jh <Esc>i
inoremap jj <Esc>A
inoremap jx <Esc>lxi
inoremap jk <Esc>
inoremap jn <Esc>o
inoremap <leader>> <esc>>>a
inoremap <leader>< <esc><<a
"auto close tag
inoremap <leader>ct </<Esc>2F<lyiwf/pa><Esc>F<i
"auto close tag with empty line
inoremap <leader>cst </<Esc>2F<lyiwf/pa><Esc>F<i<CR><CR><Esc>kS
"markdown code - puts cursor in middle of ```
inoremap ``` ``````<esc>3ha<cr><cr><esc>kS<tab>
inoremap <bs> <nop>
inoremap <leader>M <esc>mM

" inoremap <leader>p <esc> :Copilot panel<cr>
nnoremap <leader>p :Copilot panel<cr>
nnoremap <leader>M `Ma
" normal maps
nnoremap m1 :normal! kmmjdd{p`m<cr>
" syntax sync clear
nnoremap <space>sc :syntax sync clear<cr>
" syntax sync start
nnoremap <space>ss :syntax sync fromstart<cr>
" start command with history
nnoremap ; q:
" start search with history
nnoremap <leader>/ q/i
nnoremap <leader>ve :e $MYVIMRC<cr>
" source vime file
nnoremap <leader>vs :so $MYVIMRC<cr>

" add to end of line w/o losing location
nnoremap <leader>a; mlA;<esc>`l
nnoremap <leader>r; ml$r;`l
nnoremap <leader>a, mlA,<esc>`l
nnoremap <leader>r, ml$r,`l
nnoremap <leader>a) mlA)<esc>`l
nnoremap <leader>r) ml$r)`l
nnoremap <leader>a] mlA]<esc>`l
nnoremap <leader>r] ml$r]`l
nnoremap <leader>a} mlA}<esc>`l
nnoremap <leader>r} ml$r}`l
nnoremap <leader>a" mlA"<esc>`l
nnoremap <leader>r" ml$r"`l
nnoremap <leader>a' mlA'<esc>`l
nnoremap <leader>r' ml$r'`l
nnoremap <leader>a. mlA.<esc>`l
nnoremap <leader>r. ml$r.`l
nnoremap <leader>de ml$x`l

nnoremap <space><space> :set nohlsearch!<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
nnoremap <Up>    :resize +2<CR>
" change pwd to directory of current file
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <space>r :set relativenumber!<CR>
nnoremap <space>n :set number!<CR>
" use enter key to repeat last macro
nnoremap <expr> <CR> empty(&buftype) ? '@@' : '<CR>'
nnoremap <leader><leader> :b#<CR>
" nnoremap <leader>o :only<CR>
nnoremap <leader>of :browse oldfiles<cr>
nnoremap <leader>a; mpA;<esc>`p
" token alexa set -- set the ask access token to be used in vimspector
nnoremap <leader>ats :!ask_access_token_set<cr>

nnoremap ' `
noremap <C-w>h <C-w>H
noremap <C-w>j <C-w>J
noremap <C-w>k <C-w>K
noremap <C-w>l <C-w>L
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap cc <C-w>c
noremap <leader>q :%bdelete! <bar> q!<CR>
noremap <leader>s :w<CR>
noremap <leader>as :wa<CR>
nnoremap go o<Esc>
nnoremap gO O<Esc>j
nnoremap <leader>tt :tabnew 
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bq :bp <BAR> bd #<CR>
"j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j') 
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap Y y$
nnoremap <space>d :+
nnoremap <space>u :-
"spell checker - change word
nnoremap <leader>cw z=1<cr><cr>
nnoremap ,ltl :call GetAWSLexiconTemplate()<cr>
nnoremap ,ltt :call GetAWSTagsTemplate()<cr>
" go backwards a file
nnoremap <leader>gbf :earlier 1f<cr>
" go forwards a file
nnoremap <leader>gff :later 1f<cr>
" operator maps
" quickfix window
nnoremap <leader>ct :call asyncrun#quickfix_toggle(8)<cr>
nnoremap <leader>ar :AsyncRun! -cwd=$(VIM_FILEDIR) sh 
" using <c-u> to remove the range that vim may insert
" operators act on the vim range or when using <c-u>, the selected range

" uppercase word
nnoremap <leader>U mzgUiw`z
nnoremap <leader>u mzguiw`z
" code check
nnoremap <leader>cc :CocList diagnostics<cr>

inoremap <leader>U <esc>mzgUiW`za
inoremap <leader>u <esc>mzguiW`za

" delete around next word
onoremap anw :<c-u>normal! wvaw<cr>
" delete around next Word
onoremap anW :<c-u>normal! WvaW<cr>
" delete inner next word
onoremap inw :<c-u>normal! wviw<cr>
" delete inner next Word
onoremap inW :<c-u>normal! WviW<cr>

" around next bracket
onoremap an[ :<c-u>normal! f[va[<cr>
" around last bracket
onoremap al[ :<c-u>normal! F[va[<cr>
" inside next bracket
onoremap in[ :<c-u>normal! f[vi[<cr>
" inside last bracket
onoremap il[ :<c-u>normal! F[vi[<cr>

" around next bracket
onoremap an{ :<c-u>normal! f{va{<cr>
" around last bracket
onoremap al{ :<c-u>normal! F{va{<cr>
" inside next bracket
onoremap in{ :<c-u>normal! f{vi{<cr>
" inside last bracket
onoremap il{ :<c-u>normal! F{vi{<cr>

" around next parenthesis
onoremap an( :<c-u>normal! f(va(<cr>
" around last parenthesis
onoremap ap( :<c-u>normal! F(va(<cr>
" inside next parenthesis
onoremap in( :<c-u>normal! f(vi(<cr>
" inside last parenthesis
onoremap ip( :<c-u>normal! F(vi(<cr>

" around next single quote
onoremap an' :<c-u>normal! f'va'<cr>
" around last single quote
onoremap ap' :<c-u>normal! F'va'<cr>
" inside next single quote
onoremap in' :<c-u>normal! f'vi'<cr>
" inside last single quote
onoremap ip' :<c-u>normal! F'vi'<cr>

" around next double quote
onoremap an" :<c-u>normal! f"va"<cr>
" around last double quote
onoremap ap" :<c-u>normal! F"va"<cr>
" inside next double quote
onoremap in" :<c-u>normal! f"vi"<cr>
" inside last double quote
onoremap ip" :<c-u>normal! F"vi"<cr>
" terminal maps
tnoremap jk <C-\><C-n>


" set backup and turn back off
nnoremap ,bo :set backup <bar> set patchmode=.orig<CR>
nnoremap ,bO :set nobackup <bar> set patchmode=<CR>

nnoremap <leader>ms :NERDTreeClose<cr>:mks! ~/.vim/sessions/
nnoremap <leader>os :so ~/.vim/sessions/
nnoremap <leader>dms :VimspectorMkSession  ~/.vim/session/vimspector/
nnoremap <leader>dos :VimspectorLoadSession ~/.vim/session/vimspector/
"}}}

" wip mappings
nnoremap <leader>cn :cnext<cr>
nnoremap <leader>cp :cprevious<cr>
" search for current word under cursor w/ results opening in quickfix window
" :nnoremap <leader>gw :silent execute "grep! -R " . shellescape(expand("<cword>")) . " ."<cr>:copen 5<cr>
" search for current Word under cursor w/ results opening in quickfix window
" :nnoremap <leader>gW :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen 5<cr>
" edit vim file
" 

" plugins mappings

" CtrlP - Easy bindings for its various modes
nnoremap <leader>bb :CtrlPBuffer<cr>
nnoremap <leader>bm :CtrlPMixed<cr>
nnoremap <leader>bs :CtrlPMRU<cr>
" NerdTree
nnoremap <c-n> :NERDTreeFind<CR>zz<c-w><c-p>
nnoremap <c-t> :NERDTreeToggle<CR>
"NarrowRegion
" Open the current visual window in a new narrowed window
nnoremap <leader>nw :NW<CR>
" AG
nnoremap <leader>ag :Ag



"}}}

" Automatically save folds
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * silent! mkview
  autocmd BufWinEnter * silent! loadview
augroup END


" Git Gutter Mappings & Settings
nmap <leader>gj ]c
nmap <leader>gk [c
nmap <leader>gs <leader>hs
nmap <leader>gu <leader>hu
nmap <leader>gp <leader>hp

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = 'm'
let g:gitgutter_sign_removed = 'd'
let g:gitgutter_sign_removed_first_line = 'rf'
let g:gitgutter_sign_modified_removed = 'mr'


let g:terraform_align=1

" Abbreviations
iabbr cs2log const {log} = console;


" NERDTree Mappings & Settings
let g:NERDTreeIgnore = ['^node_modules$']
" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && g:NERDTree.IsOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

augroup NerdTreeSettings
  autocmd! 
  autocmd VimEnter * NERDTree "opens NerdTree when vim stars
  autocmd VimEnter * wincmd p "sets to Prev Window
  "autocmd BufEnter * call SyncTree()
  autocmd FileType nerdtree setlocal relativenumber
augroup END

" Highlight currently open buffer in NERDTree

let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "m",
    \ "Staged"    : "s",
    \ "Untracked" : "u",
    \ "Renamed"   : "r",
    \ "Unmerged"  : "u",
    \ "Deleted"   : "d",
    \ "Dirty"     : "m",
    \ "Clean"     : "c",
    \ 'Ignored'   : 'i',
    \ "Unknown"   : "?"
    \ }


" Coc Settings
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-prettier', 'coc-html', 'coc-pyright']
" coc plugins
" if hidden is not set, TextEdit might fail.
set hidden

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'results:50' " overcome limit imposed by max height

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=750

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

"" Trigger configuration. Do not use <tab> if you use
"" https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger='<c-space>'

"" shortcut to go to next position
"let g:UltiSnipsJumpForwardTrigger='<c-j>'

"" shortcut to go to previous position
"let g:UltiSnipsJumpBackwardTrigger='<c-k>'


let g:ctrlp_regexp = 1
" Buffers go back to prev
" Use the nearest .git directory as the cwd
let g:ctrlp_working_path_mode = 'r'


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
"autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word

" Remap for format selected region
xmap <leader>f  :Format<CR>
nmap <leader>f  :Format<CR>
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end




if has('patch-8.1.1880')
  set completeopt=longest,menuone,popuphidden
  " Highlight the completion documentation popup background/foreground the same as
  " the completion menu itself, for better readability with highlighted
  " documentation.
  set completepopup=highlight:Pmenu,border:off
else
  set completeopt=longest,menuone,preview
  " Set desired preview window height for viewing documentation.
  set previewheight=5
endif

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
augroup typescript_commands
  autocmd!
  autocmd FileType typescript xmap <leader>ac  <Plug>(coc-codeaction-selected)
  autocmd FileType typescript nmap <leader>ac  <Plug>(coc-codeaction-selected)
  autocmd FileType typescript nmap <leader>ac  <Plug>(coc-codeaction)
  autocmd FileType typescript nmap <silent> gd <Plug>(coc-definition)
  autocmd FileType typescript nmap <silent> gy <Plug>(coc-type-definition)
  autocmd FileType typescript nmap <silent> gi <Plug>(coc-implementation)
  autocmd FileType typescript nmap <silent> gr <Plug>(coc-references)
  autocmd FileType typescript nnoremap <leader>or :OR<cr>
  autocmd FileType typescript nnoremap <silent> K :call <SID>show_documentation()<CR>
  autocmd FileType typescript nmap <leader>rn <Plug>(coc-rename)
  autocmd FileType typescript nnoremap <leader>cr :AsyncRun! -silent -strip npm run --silent start<cr>
augroup END
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)


let g:OmniSharp_loglevel = 'debug'
" let g:OmniSharp_highlighting = 2
let g:OmniSharp_diagnostic_overrides = {
\ 'IDE0010': {'type': 'I'},
\ 'IDE0055': {'type': 'W', 'subtype': 'Style'},
\ 'CS8019': {'type': 'None'},
\ 'RemoveUnnecessaryImportsFixable': {'type': 'None'}
\}



let g:OmniSharp_popup_mappings = {
\ 'close': 'q',
\ 'sigNext': '<C-n>',
\ 'sigPrev': '<C-p>',
\ 'lineDown': ['<C-e>', 'j'],
\ 'lineUp': ['<C-y>', 'k']
\}

let g:OmniSharp_popup_options = {
\ 'highlight': 'Normal',
\ 'padding': [1],
\ 'border': [1],
\ 'borderchars': ['─', '│', '─', '│', '╭', '╮', '╯', '╰'],
\ 'borderhighlight': ['Special']
\}

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" Themes
let g:gruvbox_italic=1
" let g:gruvbox_improved_strings=1
let g:gruvbox_invert_indent_guides=1
let g:gruvbox_contrast_dark='soft'
set bg=dark

" colorscheme simple-dark
colorscheme gruvbox
" colorscheme solarized
" colorscheme dracula
" colorscheme dogrun
" colorscheme xcodedarkhc
" colorscheme onehalfdark
" colorscheme nord
" colorscheme one
" colorscheme OceanicNext
" colorscheme wal
set encoding=UTF-8
 "dark red
hi tsxTagName guifg=#E06C75

" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic

" light-grey
hi tsxTypeBraces guifg=#999999
" dark-grey
hi tsxTypes guifg=#666666


" Visual Text Macros
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction


" Set File Types
augroup SetFileType
  autocmd!
  autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
  " tsconfig.json is actually jsonc, help TypeScript set the correct filetype
  autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc
  autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
  autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
augroup END


" Airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'


" vim-markdown folding
let g:vim_markdown_folding_disabled = 1


" Vimscript file settings 
augroup filtetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" 

" Pandoc Markdown To Pdf 
function! PandocMarkdownToPdf()
  " .expand('%:r') gets root file name and % gets full filename
  " something like this -> !pandoc -o somefilename.pdf somefilename.md
  write!
  sleep ".1s"
  execute "AsyncRun! -silent -strip -close -mode=bang pandoc -o .expand('%:r').".html ".expand('%').' | rifle '.expand('%:r').'.pdf'
  
endfunction

" Pandoc Markdown To Pdf 
function! PandocMermaidMarkdownToPdf()
  " .expand('%:r') gets root file name and % gets full filename
  " something like this -> !pandoc -o somefilename.pdf somefilename.md
  write!
  sleep ".1s"
  execute "AsyncRun! -silent -strip -close -mode=bang pandoc --latext-engine=xelatex -V fontsize=30pt -F mermaid-filter -o ".expand('%:r').".pdf ".expand('%').' | rifle '.expand('%:r').'.pdf'
  
endfunction

function! GetAWSServiceActions_Normal()
  let action = system("! awsgetaction")
  let cmd = "\<c-r>='".action."'\<cr>"
  execute 'normal! a'.cmd."\<esc>"
endfunction

function! GetAWSServiceActions_Insert()
  let action = system("! awsgetaction")
  let cmd = "\<c-r>='".action."'\<cr>"
  start
  call feedkeys(cmd) 
endfunction

nnoremap <leader>gs :call GetAWSServiceActions_Normal()<cr>
inoremap <leader>gs <c-o>:call GetAWSServiceActions_Insert()<cr>

augroup Pandoc
  autocmd!
  autocmd FileType markdown nnoremap <buffer> ,p :call PandocMarkdownToPdf()<CR><CR> 
  autocmd FileType markdown nnoremap <buffer> ,mp :call PandocMermaidMarkdownToPdf()<CR><CR> 
augroup END

augroup YamlStuff
  autocmd!
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:> foldmethod=indent nofoldenable
augroup END






" GuiCursor
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
 \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
 \,sm:block-blinkwait175-blinkoff150-blinkon175


" Vim Markdown 
let vim_markdown_preview_github=1
" let vim_markdown_preview_hotkey='<leader><C-m>'
let vim_markdown_preview_browser='brave-browser-stable'
let vim_markdown_preview_toggle=0
" 


let g:default_pixel = 100

" templates
function GetAWSLexiconTemplate()
  :read /home/joe/.config/nvim/templates/lexicon
endfunction

function GetAWSTagsTemplate()
  :read /home/joe/.config/nvim/templates/tags
endfunction


" omnisharp
" don't start yourself
let g:OmniSharp_start_server = 1
let g:OmniSharp_server_use_mono = 0
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_prefer_global_sln = 1
let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim

" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#actions#rename#To(" ")

augroup omnisharp_commands
  autocmd!
  " autocmd CursorHold *.cs OmniSharpTypeLookup
  autocmd FileType cs set signcolumn=yes
  autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
  autocmd FileType cs nmap <silent> <buffer> gi <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> pd <Plug>(omnisharp_preview_definition)
  autocmd FileType cs nmap <silent> <buffer> pi <Plug>(omnisharp_preview_implementations)
  autocmd FileType cs nmap <silent> <buffer> K <Plug>(omnisharp_documentation)
  autocmd FileType cs nmap <silent> <buffer> <Leader>or <Plug>(omnisharp_fix_usings)
  autocmd FileType cs nmap <silent> <buffer> <Leader>rn :Rename 
  autocmd FileType cs nmap <silent> <buffer> <Leader>ac <Plug>(omnisharp_code_actions)
  " Find all code errors/warnings for the current solution and populate the quickfix window
  autocmd FileType cs nmap <silent> <buffer> <Leader>gcc <Plug>(omnisharp_global_code_check)
  " autocmd TextChangedI *.cs SyntasticCheck
  autocmd FileType cs nmap <silent> <buffer> <leader>f :OmniSharpCodeFormat<CR>
  autocmd FileType cs nmap <silent> <buffer> <leader>a :OmniSharpFixUsings<CR>
  autocmd FileType cs nnoremap <leader>cr :AsyncRun! -silent -strip dotnet run<cr>

augroup END

function GotoWindow(id)
  call win_gotoid(a:id)
  MaximizerToggle!
  let g:vimspector_code_minwidth = 120
  let g:vimspector_terminal_maxwidth = 75
  let g:vimspector_terminal_minwidth = 20
endfunction


" debugger remaps

function! s:VimSpectorCustomUI()
  call win_gotoid( g:vimspector_session_windows.output )
  q
  " call win_gotoid( g:vimspector_session_windows.watches )
  " q
  " call win_gotoid( g:vimspector_session_windows.variables )
  " q
  " call win_gotoid( g:vimspector_session_windows.stack_trace )
  " q
  " call win_gotoid( g:vimspector_session_windows.code )
  nunmenu WinBar
  nmap <space>d <DEL>
endfunction


nnoremap <leader>gts :GitGutterSignsToggle<cr>


nnoremap <leader>z :MaximizerToggle!<cr>
nnoremap <leader>dd :GitGutterSignsDisable <cr> :set signcolumn=yes <cr> :call vimspector#Launch()<cr>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<cr>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<cr>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<cr>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<cr>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<cr>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<cr>
nnoremap <leader>dr :GitGutterSignsEnable <cr> :call vimspector#Reset()<cr>
nnoremap <space>v :call vimspector#StepOver()<cr>
nnoremap <space>i :call vimspector#StepInto()<cr>
nnoremap <space>o :call vimspector#StepOut()<cr>
nnoremap <space>b :call vimspector#ToggleBreakpoint()<cr>
nnoremap <leader>dj :call vimspector#JumpToNextBreakpoint()<cr>
nnoremap <silent> <leader>dtb
      \ :<c-u>call vimspector#ToggleBreakpoint(
                    \ { 'condition': input( 'Enter condition expression: ' ),
                    \   'hitCondition': input( 'Enter hit count expression: ' ) }
                    \ )<CR>
nmap <space>c <Plug>VimspectorContinue
" for normal mode - the word under the cursor
nmap <space>e  <plug>VimspectorBalloonEval
nmap <space>w  : VimspectorWatch <c-r>=expand("<cword>")<cr><cr>
" for visual mode, the visually selected text
" xmap <space>e  <Plug>VimspectorBalloonEval

augroup MyVimspectorUICustomistaion
  autocmd!
  autocmd User VimspectorUICreated call s:VimSpectorCustomUI()
augroup END


let g:vimspector_code_minwidth = 120
let g:vimspector_terminal_maxwidth = 75
let g:vimspector_terminal_minwidth = 20
let g:vimspector_enable_mappings = 'HUMAN'
" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)


set bs=2

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" terraform stuff

function! FormatTerraform()
  :cd %:p:h
  silent! !terraform fmt
  silent !clear
  silent! redraw!
  e
endfunction

nnoremap <leader>tfa :! clear<cr> :! terraform apply --auto-approve<cr>
nnoremap <leader>ta :! clear<cr> :! terraform apply<cr>
nnoremap <leader>tp :! clear<cr> :! terraform plan<cr>
nnoremap <leader>td :! clear<cr> :! terraform destroy<cr>
nnoremap <leader>ti :! clear<cr> :! terraform init<cr>



augroup TerraformFormat
  autocmd!
  autocmd BufWritePost *.tf call FormatTerraform()
augroup END

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

" hi Normal guibg=NONE ctermbg=NONE
" hi LineNr guibg=NONE ctermbg=NONE
" hi SignColumn guibg=NONE ctermbg=NONE
" hi EndOfBuffer guibg=NONE ctermbg=NONE

" sql workbench
let g:sw_exe = '/home/joe/.sqlworkbench/sqlwbconsole.sh'

" augroup vimrc
"     autocmd QuickFixCmdPost * call asyncrun#quickfix_toggle(8, 1)
" augroup END

augroup vimrc
  autocmd!
  autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END

let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])

augroup runpython
  autocmd!
  autocmd FileType python nnoremap <silent> <leader>rp :w <bar> AsyncRun!  -strip python3 %<cr>
augroup END

augroup commandwindow
  autocmd!
  autocmd CmdwinEnter * nmap <buffer> <CR> i<CR>
augroup END

let g:syntastic_python_checkers = ['pylint']
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsSnippetsDir="~/.vim/my-ultiSnips"
" let g:UltiSnipsSnippetDirectories = ['my-ultiSnips', 'Ultisnips']

" Set Background - Leave at bottom of file 
" hi Normal guibg=black ctermbg=black


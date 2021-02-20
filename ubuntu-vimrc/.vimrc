" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim' " html emmet
Plug 'christoomey/vim-tmux-navigator'

Plug 'morhetz/gruvbox'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'frazrepo/vim-rainbow' 
"Plug 'christoomey/vim-system-copy'
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
"Plug 'shougo/deoplete.nvim'
" Initialize plugin system
Plug 'ai/autoprefixer'
Plug 'ap/vim-css-color'
Plug 'KabbAmine/vCoolor.vim'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'lepture/vim-jinja'
" Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-startify'
Plug 'kassio/neoterm'
Plug 'tpope/vim-rsi'
Plug 'jparise/vim-graphql'
" Plug 'altercation/vim-colors-solarized'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'HenryNewcomer/vim-theme-papaya'
Plug 'mhartington/oceanic-next'
" Plug 'dsznajder/vscode-es7-javascript-react-snippets'
" , { \ 'do': 'yarn install --frozen-lockfile && yarn compile' }
call plug#end()

" Plug 'mhartington/oceanic-next'
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext

" Plug 'HenryNewcomer/vim-theme-papaya'
" colorscheme papaya
" if (has("termguicolors"))
"   set termguicolors
" endif
" let g:papaya_gui_color='blue'

" vim-color-solarized settings
" syntax enable
" set background=dark
" colorscheme solarized
" let g:solarized_termcolors=256
" call togglebg#map("<F5>")

" dracula/vim
" packadd! dracula
" syntax enable
" colorscheme dracula

" kassio-neoterm start
let g:neoterm_default_mod='belowright' " open terminal in bottom split
let g:neoterm_size=16 " terminal split size
let g:neoterm_autoscroll=1 " scroll to the bottom when running a command
nnoremap <leader><cr> :TREPLSendLine<cr>j " send current line and move down
vnoremap <leader><cr> :TREPLSendSelection<cr> " send current selection
" kassio-neoterm end

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" remove highlight text
nmap <space>, :noh<CR>

" This way, whenever you type % you jump to the matching object, and you visually select all the text in between.
noremap % v%
noremap <Tab> v%
" vim-airline tab settings
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
" end vim-airline tab settings

" start mattn/emmet-vim
let g:user_emmet_leader_key=','

map <F3> :setlocal spell! spelllang=en_us<CR>
" auto save with 'jk' keys"
inoremap jk <ESC>:w<cr>


vmap ,c <plug>NERDCommenterToggle
nmap ,c <plug>NERDCommenterToggle
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  
    "\ "Untracked" : "#FCE77C",  
    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }                         

let g:NERDTreeIgnore = ['^node_modules$']

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" ctrlp  " Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set background=dark
set relativenumber number
set showcmd
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab

" http://stevelosh.com/blog/2010/09/coming-home-to-vim/#important-vimrc-lines
let mapleader = "," "remapping leader key to ,"
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
"set y and p for both system and vim
set clipboard^=unnamed,unnamedplus

" vim handle long lines correctly
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

nnoremap ; :
inoremap jj <ESC>

" uncomment nextline for gruvbox to work
" colorscheme gruvbox

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
" autocmd BufEnter * call SyncTree()

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

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

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

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

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"

nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


function! Osc52Yank()
 cu  let buffer=system('base64 -wO', '@O')
  let buffer='\ePtmux:\e\e]52:c;'.buffer.'\x07\e\\'
  silent exe "!echo -ne".shellescape(buffer)." > ".shellescape(g:tty)
endfunction

nnoremap <leader>y :call Osc52Yank<CR>

function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')
call SetupCommandAbbrs('Clx', 'CocList extensions')

" coc-git extensions
set statusline^=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}


" tpope vim-repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
"To get correct comment highlighting for coc-settings.json
autocmd FileType json syntax match Co+$+

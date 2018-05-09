" ================= sliverleaf 2005/10/07 =====================================
" [.vimrc]
" setting modeline of vim:
"	vim:ts=8:fdm=marker:foldcolumn=2

"set tags=/root/Surveillance/tags
" ================= remember position of cursor ===============================
if filereadable($VIMRUNTIME . "/vimrc_example.vim")
	so $VIMRUNTIME/vimrc_example.vim
endif

if filereadable($VIMRUNTIME . "/macros/matchit.vim")
	so $VIMRUNTIME/macros/matchit.vim
endif

" ================= syntax on =================================================
syntax on		" syntax on/off/enable

" ================= Vim Settings (:set show current settings) =================
set nu
set mouse=nv
set wildmenu
set backupdir=~/tmp		" op=,.,/var/tmp/vi.recover,/tmp " bdir: backup directory
set directory=~/tmp		" op=,.,/var/tmp/vi.recover,/tmp " dir to save swp files
set noundofile
set nobackup
set noswapfile
"set backup			" backup: keep a backup file
set ruler			" show the cursor position all the time
set showmode			" show mode. show filename size when open file
set bs=2			" allow backspacing over everything in insert mode
set ai				" autoindent: always set autoindenting on
set viminfo='20,\"50		" read/write a .viminfo file, don't store more
set showmatch			" Show matching parenthese.
set nohls			" nohlsearch: no hight light search
set incsearch			" move to target when search
set wrapscan			" return to top of file when search hit buttom
set fileformat=unix		" fileformat: EOL(end of line: unix=\n dos=\r\n) format when write
set fileformats=unix		" fileformats: input file format is unix file
set viminfo='20,\"50		" read/write a .viminfo file, don't store less than 50 lines of registers 20 commands
set showcmd			" display incomplete commands

" other options {{{
"
" set compatible		" 設為和原始 vi 相容的狀態,vim 的擴充功能會被抑制,default off
" set wb			" writebackup: back up after write
" set swapfile			" have swap space or total load into memory
" set autowrite			" auto write when update
" set confirm
" set textwidth=78		" insert EOL when char more than textwidth
" set wrapmargin=1		" the same as textwidth, but count from rigth
" set wrap 			" warp but not insert EOL
set shiftwidth=4		" width of shift a line when use >>
set ts=4			" tabstop:
" set nu			" number: show line number
" set list			" EOL=>$ TAB=>^T
" set laststatus=2		" Display a status-bar.
" set cmdheight=2		" number of line of status bar
" set statusline=		" set format of status bar (:h stl)
set cin			" cindent: indent when write c/cpp language
" set ignorecase		" ignore case when search
" set background=light		" dark/light, settings on /usr/share/vim/vim63/syntax/synload.vim
" }}}

" ================= KeyBoard Mappings (:h key-notation) =======================
imap <F1>	<ESC>ga		" replace <HLEP> by <ESC> in insert mode
map <F1>	ga		" dispplay encoding
map <F4>	<ESC>:tabclose<CR>
map <F5>	<ESC>:tabN<CR>
map <F6>	<ESC>:tabn<CR>
imap <F5>	<ESC>:tabN<CR>		" go to previous file in buffer
imap <F6>	<ESC>:tabn<CR>		" go to next file in buffer
map <F8>	:set hls!<BAR>set hls?<CR>	" switch hls/nohls
map <F9>	:set nu!<BAR>set nu?<CR>	" switch nu/nonu
map <F10>	:set list!<BAR>set list?<CR>	" switch list/nolist
map <F11>	:%!xxd<CR>	" display binary file by Hex
map <F12>	:%!xxd -r<CR>	" display normal text file
map <C-Z>	:syn region myFold start="{" end="}" transparent fold<CR>
			\:syn sync fromstart<CR>
			\:set foldmethod=syntax<CR>
			\:set fdl=100<CR>
				" fold by syntax

map <C-N>	<ESC>:tabnew<CR>:e .<CR>

" ================= Fold Settings (:h fold , :h fold-foldtext) ================
set fillchars=""		" set fillchars of folded line to null string
set foldtext=MyFoldText()
function MyFoldText()
	return foldtext() . " --+"
endfunction

" ================= Display Colors (:h hi) ====================================
hi Comment		ctermfg=Blue
hi Folded		ctermfg=DarkGray	ctermbg=Black
hi FoldColumn		ctermfg=DarkGray	ctermbg=Black
hi TabLine		ctermfg=Black		ctermbg=Gray
hi TabLineFill		ctermfg=Gray		ctermbg=Gray
hi TabLineSel		ctermfg=White		ctermbg=Black
hi Cursor		ctermfg=White		ctermbg=Black

"hi Constant		ctermfg=LightRed	
" more options{{{
"
" hi Constant	Special		Identifier	Statement	PreProc		Type	Ignore
" 	Error	Todo		Search		ErrorMsg	StatusLine	StatusLineNC
"ctermfg=COLOR ctermbg=COLOR 
"Red         LightRed        DarkRed	     Green       LightGreen      DarkGreen       SeaGreen
"Blue        LightBlue       DarkBlue        SlateBlue   Cyan            LightCyan       DarkCyan
"Magenta     LightMagenta    DarkMagenta     Yellow      LightYellow     Brown           DarkYellow
"Gray        LightGray       DarkGray        Black       White           Orange          Purple          Violet
"}}}

" ================= Encodings =================================================
" piaip's gvim settings for gvim/win32 with UTF8
" optimized for Traditional Chinese users
" last update: Mon Jun  7 17:59:54 CST 2004

"set encoding=utf-8             " enc: latin/big5/ucs-bom/utf-8/sjis/big5/...
"set fileencoding=big5
"set termencoding=big5
"set fileencodings=big5,ucs-bom,utf-8,gb2312,korea,sjis,gb18030,latin1

let $LANG="zh_TW.UTF8" " locales => zh_TW.UTF-8
set encoding=utf-8      " ability => utf-8
set fileencoding=utf-8   " prefer => big5
" charset detect list. ucs-bom must be earlier than ucs*.
set fileencodings=utf-8,big5,GB2312

" for console mode we use big5
"if has("gui_running")
    set termencoding=utf-8
"else
"    set termencoding=big5
"endif

" vim:ft=vim


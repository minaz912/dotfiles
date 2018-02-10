" cursor shape
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set wrap
set linebreak
set nolist

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#auto_complete_delay = 147
let g:deoplete#enable_refresh_always = 1
let g:deoplete#min_pattern_length = 0

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
 
" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" let g:javascript_conceal_function             = "ƒ"
" let g:javascript_conceal_null                 = "ø"
" let g:javascript_conceal_this                 = "@"
" let g:javascript_conceal_return               = "⇚"
" let g:javascript_conceal_undefined            = "¿"
" let g:javascript_conceal_NaN                  = "ℕ"
" let g:javascript_conceal_prototype            = "¶"
" let g:javascript_conceal_static               = "•"
" let g:javascript_conceal_super                = "Ω"
" let g:javascript_conceal_arrow_function       = "⇒"
" let g:javascript_conceal_noarg_arrow_function = "🞅"
" let g:javascript_conceal_underscore_arrow_function = "🞅"
" set conceallevel=1

" Syntastic
let g:syntastic_error_symbol = '✗✗'
let g:syntastic_style_error_symbol = '✠✠'
let g:syntastic_warning_symbol = '∆∆'
let g:syntastic_style_warning_symbol = '≈≈'
set statusline+=%*

" gruvbox color scheme
" let g:gruvbox_contrast_dark = 'hard'

" GitGutter
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '-^'
let g:gitgutter_sign_modified_removed = '-~'

" let g:gitgutter_override_sign_column_highlight = 0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=lightgreen guifg=lightgreen
highlight GitGutterChange ctermfg=yellow guifg=lightyellow
highlight GitGutterDelete ctermfg=red guifg=lightred
highlight GitGutterChangeDelete ctermfg=yellow guifg=yellow

" denite
" let denite#matcher_ignore_globs = ['*~', '*.o', '*.exe', '*.bak', '.DS_Store', '*.pyc', '*.sw[po]', '*.class', '.hg/', '.git/', '.bzr/', '.svn/', 'tags', 'tags-*', 'node_modules/*']

" emmet on react files
" autocmd FileType html,css,javascript.jsx EmmetInstall
" let g:user_emmet_settings = {
" \  'javascript' : {
" \      'extends' : 'jsx',
" \  },
" \}
" autocmd FileType html,css,javascript EmmetInstall

" easy-escape (keymap to exit insert mode)
let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
cnoremap jk <ESC>
cnoremap kj <ESC>

" solarized8 customizations
let g:solarized_termtrans = 1
let g:solarized_extra_hi_groups = 1
let g:solarized_term_italics = 1

" fixes issue with incorrect colors inside tmux
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" livedown (markdown preview plugin) config
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0

" should the browser window pop-up upon previewing
let g:livedown_open = 1 

" the port on which Livedown server will run
let g:livedown_port = 1176

" the browser to use
let g:livedown_browser = "google-chrome-beta"

" select light variants of color schemes
set background=light


map <F5> :w <enter> :!npm start <enter>
" Fixer
" ctrl + f | crtl + I
let b:ale_fixers = ['prettier','eslint']
nmap <c-I> <Plug>(ale_fix)
" nnoremap <F5> :w <enter> :!kill $(ps aux | grep flymytello | head -n 1 | awk '{print $2}'); npm start & <enter> 


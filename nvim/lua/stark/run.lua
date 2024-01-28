vim.cmd([[
autocmd filetype c nnoremap <C-x> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype python nnoremap <C-x> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype cpp nnoremap <C-x> :w <bar> exec '!g++ -O2 -std=c++17 '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype go nnoremap <C-x> :w <bar> exec '!go run '.shellescape('%')<CR>
autocmd filetype javascript nnoremap <C-x> :w <bar> exec '!node '.shellescape('%')<CR>
]])


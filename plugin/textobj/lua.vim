if !(has('python') || has('python3'))
    echo "Error: vim-textobj-lua requires vim compiled with python support"
    finish
endif

let g:textobj_lua_no_default_key_mappings = 1

call textobj#user#plugin('lua', {
      \ 'block': {
      \   'select-a': 'aj',
      \   'select-a-function': 'textobj#lua#a_block',
      \   'select-i': 'ij',
      \   'select-i-function': 'textobj#lua#i_block',
      \ },
\ })

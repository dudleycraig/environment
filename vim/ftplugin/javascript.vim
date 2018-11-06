"******************************************************************************
" JAVASCRIPT
"******************************************************************************
" npm init
" npm install --save-dev autoprefixer popper history prettier babel-core babel-cli babel-loader babel-register babel-preset-env babel-preset-react babel-preset-es2015 babel-preset-stage-1 @babel/preset-react @babel/core @babel/preset-env babel-eslint bootstrap-sass-loader eslint eslint_d eslint-plugin-import eslint-plugin-mocha eslint-plugin-react eslint-plugin-prettier eslint-watch eslint-config-prettier mocha mocha-webpack chai enzyme file-loader json-loader url-loader resolve-url-loader exports-loader react-hot-loader style-loader css-loader sass-loader node-sass postcss-loader node-sass mini-css-extract-plugin extract-text-webpack-plugin html-webpack-plugin react-test-renderer redux-logger webpack webpack-cli webpack-dev-server webpack-bundle-analyzer webpack-dev-middleware webpack-hot-middleware webpack-md5-hash
" npm install --save jquery popper bootstrap bootstrap-loader bootstrap-sass react-bootstrap react react-dom react-router-dom react-autosuggest redux react-redux react-router-redux redux-logger redux-thunk redux-immutable-state-invariant reducers history moment moment-duration-format babel-polyfill npm install

"******************************************************************************
setlocal expandtab tabstop=2 shiftwidth=2 textwidth=80

" eclim
let g:EclimJavascriptValidate=0 
let g:EclimJavascriptLintEnabled=0

" YouCompleteMe
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType javascript setlocal omnifunc=tern#Complete

" vim-syntastic/syntastic
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_checkers = ['jsonlint']
" let g:syntastic_javascript_eslint_exe = 'eslint_d'
" let g:syntastic_javascript_eslint_exe = 'node_modules/.bin/eslint -c .eslintrc.json .'
" let g:syntastic_javascript_eslint_exe = "cmd /C 'node C:\Users\dudley\AppData\Roaming\npm\node_modules\eslint_d\bin\eslint.js'"
" let g:syntastic_javascript_eslint_args = "--no-eslintrc --config E:\cygwin64\home\dudley\workspace\react\.eslintrc.json"

" pangloss/vim-javascript
set conceallevel=0
" let g:javascript_conceal_function="λ"
let g:javascript_conceal_function = "ƒ"
" let g:javascript_conceal_null="ø"
" let g:javascript_conceal_static="@"
" let g:javascript_conceal_this="•"
" let g:javascript_conceal_return="⇚"
" let g:javascript_conceal_undefined="¿"
" let g:javascript_conceal_NaN="ℕ"
" let g:javascript_conceal_prototype="¶"
" let g:javascript_conceal_super="Ω"
" let g:javascript_conceal_arrow_function="⇒"

" mxw/vim-jsx
let g:jsx_ext_required=0

" ternjs/tern_for_vim
" fails on cygwin, 07-2018, due node running in windows environment for linux applications
" let tern#is_show_argument_hints_enabled=1 " show function parameters
" let g:tern#filetypes=['jsx', 'js']
" let g:tern#command=["/usr/bin/tern", "--persistent"]
" let g:tern_request_timeout=6000

" w0rp/ale
let g:ale_linters={
\  'javascript': ['eslint']
\}
let g:ale_fix_on_save=0 
let g:ale_linters_explicit=1
let g:ale_sign_column_always=1
let g:ale_completion_enabled=1
" let g:ale_sign_error = '●' 
" let g:ale_sign_warning = '.'



let g:ale_javascript_eslint_use_global=0
let g:ale_javascript_eslint_executable=$HOME . '/workspace/simfy/' . 'node_modules/.bin/eslint'
let g:ale_javascript_eslint_options='--config .eslintrc.json --ignore-path .eslintignore'

" tern
let g:jsx_ext_required=0

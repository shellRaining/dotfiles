vim.cmd [[
  let g:translator_target_lang = 'zh'
  let g:translator_default_engines = ['bing', 'google', 'haici', 'youdao']
  nmap <silent> <Leader>tt <Plug>Translate
  vmap <silent> <Leader>tt <Plug>TranslateV
  nmap <silent> <Leader>tw <Plug>TranslateW
  vmap <silent> <Leader>tw <Plug>TranslateWV
  nmap <silent> <Leader>tr <Plug>TranslateR
  vmap <silent> <Leader>tr <Plug>TranslateRV
  nmap <silent> <Leader>tx <Plug>TranslateX
]]


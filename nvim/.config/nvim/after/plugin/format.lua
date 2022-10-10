vim.g.neoformat_try_node_exe = 1

vim.cmd [[autocmd BufWritePre *.js Neoformat prettier]]
vim.cmd [[autocmd BufWritePre *.ts Neoformat prettier]]
vim.cmd [[autocmd BufWritePre *.py Neoformat python black]]

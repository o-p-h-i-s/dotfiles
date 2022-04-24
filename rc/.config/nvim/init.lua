require'plugins'
vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]

vim.cmd[[set clipboard^=unnamedplus]]

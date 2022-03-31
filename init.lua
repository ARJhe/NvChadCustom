-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!
-- This is an example init file in /lua/custom/
-- this init.lua can load stuffs etc too so treat it like your ~/.config/nvim/

-- MAPPINGS
local map = require("core.utils").map

map("n", "<leader>cc", ":Telescope <CR>")
map("n", "<leader>q", ":q <CR>")

-- complite *.cpp and execute
map("n", "<C-x>", ":!g++ -o %:r.exe % -std=c++11 && %:r.exe <CR>")
map("n", "<C-w>", ":!clang++ -o %:r.exe % && %:r.exe <CR>")


-- NvChad 的 <leader>fm shortcut 預設只在設妥 lsp server 時才有作用，但 null-ls format 不需要 lsp server
map("n", "<leader>fm", ":lua vim.lsp.buf.formatting_sync() <CR>")

-- NOTE: the 4th argument in the map function is be a table i.e options but its most likely un-needed so dont worry about it

vim.cmd ":set noswapfile"
vim.cmd ":set iskeyword+=_"

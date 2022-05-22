local M = {}

M.setup = function()
   vim.g.did_load_filetypes = 1

   require("filetype").setup({
      overrides = {
         function_extensions = {
            ["yaml"] = function()
               vim.bo.filetype = "yaml"
               vim.bo.tabstop = 2
               vim.bo.softtabstop = 2
               vim.bo.shiftwidth = 2
               vim.cmd(":setlocal iskeyword+=-")
            end,
            ["cpp"] = function()
               vim.bo.filetype = "cpp"
               vim.bo.tabstop = 4
               vim.bo.softtabstop = 4
            end,
            ["lua"] = function()
               vim.bo.filetype = "lua"
               vim.bo.tabstop = 3
               vim.bo.softtabstop = 3
               vim.bo.shiftwidth = 3
            end,
         },
      },
   })
end

return M
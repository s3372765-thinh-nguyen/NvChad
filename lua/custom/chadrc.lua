-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
    theme = "nightowl",
    hl_add =  require "custom.highlights",
}

M.plugins = require "custom.plugins"
M.mappings = require "custom.mappings"


-- Example: - lets override nvimtree's mappings
-- M.nvimtree = {
--    n = {
--       ["<leader>ff"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
--       ["<C-n>"] = { "<cmd> Telescope <CR>", "open telescope" },
--    },
-- }

return M

-- lua/custom/mappings 
local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
  n = {
      ["<C-c>"] = ""
  },
  i = {
      ["<C-c>"] = ""
  },
  v = {
      ["<C-c>"] = ""
  }
}

----------------------------------------------------------------------------------------------------

-- Ctrl+S in normal and insert mode calls :w to save the file
M.save = {
    n = { [ "<c-s>" ] = { ":w<cr>" } },
    i = { [ "<c-s>" ] = { "<esc>:w<cr>a" } }
}

-- Ctrl+C in insertion mode is mapped to Esc key instead to ensure LSP is reloaded properly
M.refresh_lsp = {
    i = { [ "<c-c>" ] = { "<esc>" } }
}

-- Ctrl+C x2 should remove all search highlighting
M.search = {
    n = { [ "<c-c><c-c>" ] = { ":noh<return><esc>" } }
}

-- Ctrl-u (delete the line before the cursor) will also create an undo breakpoint
M.undo_breakpoint_insert_mode_line_delete = {
    i = { [ "<c-u>" ] = { "<c-g>u<c-u>" } }
}

-- Ctrl-w (delete the word before the cursor) will also create an undo breakpoint
M.undo_breakpoint_insert_mode_word_delete = {
    i = { [ "<c-w>" ] = { "<c-g>u<c-w>" } }
}

-- F5 calls :te[rminal] command to run current python file 
M.python_run = {
    n = { [ "<F5>" ] = { ":w<CR>:te python3 %<CR>" } },
    i = { [ "<F5>" ] = { "<Esc>:w<CR>:te python3 %<CR>" } },
    v = { [ "<F5>" ] = { "<Esc>:w<CR>:te python3 %<CR>" } }
}

M.python_run_test = {
    n = { [ "<F8>" ] = { ":w<CR>:te python3 -m pytest %<CR>" } },
    i = { [ "<F8>" ] = { "<Esc>:w<CR>:te python3 -m pytest %<CR>" } },
    v = { [ "<F8>" ] = { "<Esc>:w<CR>:te python3 -m pytest %<CR>" } }
}

M.git = {
    n = { [ "<leader>g" ] = { ":G<CR>" } }
}

M.mksession = {
    n = { [ "<leader>ss"] = { ":mksession! ~/session-default.vim<CR>" } },
    -- i = { [ "<leader>ss"] = { "<esc><cr>:mksession! ~/session-default.vim<CR>a" } },
    v = { [ "<leader>ss"] = { "<esc><cr>:mksession! ~/session-default.vim<CR>a" } }
}

M.loadsession = {
    n = { [ "<leader>sl"] = { ":so ~/session-default.vim<CR>" } },
    -- i = { [ "<leader>sl"] = { "<esc><cr>:so ~/session-default.vim<CR>" } },
    v = { [ "<leader>sl"] = { "<esc><cr>:so ~/session-default.vim<CR>" } }
}

-- Esc in terminal mode to enter Terminal normal mode which allows scrolling
M.interminal = {
    t = { [ "<esc>" ] = { "<c-\\><c-n>" } },
}


------------
-- Examples: --
------------
-- add this table only when you want to disable default keys
-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-s>"] = ""
--   }
-- }

-- M.abc = {
--
--   n = {
--      ["<C-n>"] = {"<cmd> Telescope <CR>", "Open Telescope"}
--   },
--
--   i = {
--     -- more keys!
--   }
-- }

-- M.xyz = {
--   -- stuff
-- }

return M

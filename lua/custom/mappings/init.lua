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
    n = { [ "<F5>" ] = { ":w<CR>:te python3 %<CR>", "Run current python file" } },
    i = { [ "<F5>" ] = { "<Esc>:w<CR>:te python3 %<CR>", "Run current python file" } },
    v = { [ "<F5>" ] = { "<Esc>:w<CR>:te python3 %<CR>", "Run current python file" } }
}

-- F8 calls :te[rminal] command to run pytest on the current python file 
M.python_run_test = {
    n = { [ "<F8>" ] = { ":w<CR>:te python3 -m pytest %<CR>", "Run pytest on the current python file" } },
    i = { [ "<F8>" ] = { "<Esc>:w<CR>:te python3 -m pytest %<CR>", "Run pytest on the current python file" } },
    v = { [ "<F8>" ] = { "<Esc>:w<CR>:te python3 -m pytest %<CR>", "Run pytest on the current python file" } }
}

-- <leader>g to open gitgutter interface (with summary of files and commits)
M.git = {
    n = { [ "<leader>g" ] = { ":G<CR>", "Open Gitgutter interface (with summary of files and commits)" } }
}

-- <leader>ss and <leader>sl to save and load current session
M.mksession = {
    n = { [ "<leader>ss"] = { ":mksession! ~/session-default.vim<CR>", "save current working session" } },
    -- i = { [ "<leader>ss"] = { "<esc><cr>:mksession! ~/session-default.vim<CR>a" } },
    v = { [ "<leader>ss"] = { "<esc><cr>:mksession! ~/session-default.vim<CR>a", "save current working session"  } }
}

M.loadsession = {
    n = { [ "<leader>sl"] = { ":so ~/session-default.vim<CR>", "load current working session" } },
    -- i = { [ "<leader>sl"] = { "<esc><cr>:so ~/session-default.vim<CR>" } },
    v = { [ "<leader>sl"] = { "<esc><cr>:so ~/session-default.vim<CR>", "load current working session" } }
}

-- Esc in terminal mode to enter Terminal-normal mode which allows scrolling
M.interminal = {
    t = { [ "<esc>" ] = { "<c-\\><c-n>" } },
}

-- <leader>key to open the keymapping file
M.open_keymapping_file = {
    n = { [ "<leader>key" ] = { ":e ~/.config/nvim/lua/custom/mappings/init.lua<cr>", "Open custom keymapping file"} }
}

-- <leader>plug to open the plugin file
M.open_plugin_file = {
    n = { [ "<leader>plug" ] = { ":e ~/.config/nvim/lua/custom/plugins/init.lua<cr>", "Open custom plugin file"} }
}

-- <leader>vimrc to open the lua vimrc file
M.open_plugin_file = {
    n = { [ "<leader>vimrc" ] = { ":e ~/.config/nvim/lua/custom/init.lua<cr>", "Open custom lua vimrc file"} }
}

-- <leader>y transfers whatever is copied outside vim into the yank register (register 0)
M.transform_external_copy_to_internal_yank_register = {
    n = { [ "<leader>y"] = { ":let @0 = @*<CR>", "Transfer external clipboard content to yank register (register 0)"} }
}
-- p/P pastes only the yanked text instead of both yanked and deleted/changed text
M.paste_lowercase_yanked = {
    n = {["p"] = {'\"0p'}}
}
M.paste_uppercase_yanked = {
    n = {["P"] = {'\"0P'}}
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

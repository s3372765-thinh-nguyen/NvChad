-- we're basically returning a table!
return {
    -- Handling python code syntax highlighting
    ["neovim/nvim-lspconfig"] = {
        config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
        end,
    },

    -- Detecting and adding python code indent into vim grammar (i.e. c,d,y) by adding a new motion called i (which stands for 'i'ndent)
    ['michaeljsmith/vim-indent-object'] = {},
    -- Add quotes or blocks between text to make strings, arrays, etc. with cs,ys,ds, S commands
    ['tpope/vim-surround'] = {},
    -- Show git diff on file
    ['airblade/vim-gitgutter'] = {},
    -- Enable vim motion to treat camelCase_and_underscored_variable_names as multiple words instead of a single word for ease of variables navigation using w/b/e
    ['chaoren/vim-wordmotion'] = {},
    -- Enable git operations from inside vim
    ['tpope/vim-fugitive'] = {},
    -- Enable navigation using search
    ['ggandor/lightspeed.nvim'] = {},
    ------------
  -- Examples: --
    ------------
  -- Install plugin
  -- ["Pocco81/TrueZen.nvim"] = {},

  -- Override plugin definition options
  -- ["goolord/alpha-nvim"] = {
  --   disable = false,
  --   cmd = "Alpha",
  -- },

  -- Override plugin config
  -- ["williamboman/mason.nvim"] = {
  --   override_options = {
  --         ensure_installed = { "html-lsp", "clangd" }
  --     }
  -- },

   -- Override plugin config if it has a module called
   -- If you wish to call a module, which is 'cmp' in this case
  --  ["hrsh7th/nvim-cmp"] = {
  --   override_options = function()
  --     local cmp = require "cmp"
  --
  --     return {
  --       mapping = {
  --         ["<C-d>"] = cmp.mapping.scroll_docs(-8),
  --       },
  --     }
  --   end,
  -- },

  -- remove plugin
  -- ["neovim/nvim-lspconfig"] = false
}

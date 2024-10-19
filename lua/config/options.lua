-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

return {

  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        use_libuv_file_watcher = true,
      },
    },
  },
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     servers = {
  --       eslint = {
  --         settings = {
  --           -- This will use your project's .eslintrc.json
  --           useESLintClass = true,
  --           experimental = {
  --             useFlatConfig = false,
  --           },
  --           workingDirectory = { mode = "location" },
  --         },
  --       },
  --     },
  --   },
  -- },

  -- Trouble list only sees the current folder
  -- TODO: testsadsad
  -- {
  --   "folke/todo-comments.nvim",
  --   cmd = { "TodoTrouble", "TodoTelescope" },
  --   event = "LazyFile",
  --   opts = {},
  -- -- stylua: ignore
  -- keys = {
  --   { "]t", function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
  --   { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
  --   { "<leader>xt", "<cmd>Trouble todo toggle<cr>", desc = "Todo (Trouble)" },
  --   { "<leader>xT", "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
  --   { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
  --   { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
  -- },
  -- },
}

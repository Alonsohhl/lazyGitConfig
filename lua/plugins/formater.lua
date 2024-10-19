return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["javascript"] = { "prettier" },
        ["javascriptreact"] = { "prettier" },
        ["typescript"] = { "prettier" },
        ["typescriptreact"] = { "prettier" },
      },
    },
  },
--  {
--    "neovim/nvim-lspconfig",
--    opts = {
--      servers = {
--        eslint = {
--          settings = {
--            -- Any ESLint-specific settings can go here
--          },
--        },
--      },
--      setup = {
--        eslint = function()
--          vim.api.nvim_create_autocmd("BufWritePre", {
--            callback = function(event)
--              if require("lspconfig").util.get_active_client_by_name(event.buf, "eslint") then
--                vim.cmd("EslintFixAll")
--              end
--            end,
--          })
--        end,
--      },
--    },
--  },

  { import = "lazyvim.plugins.extras.lang.typescript" },
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
}

return {
  -- Visual
  {
    "gen740/SmoothCursor.nvim",
    cond = vim.g.neovide == nil,
    lazy = false,
    opts = {
      autostart = true,
      fancy = { enable = true },
    },
  },

  {
    "folke/todo-comments.nvim",
    event = "User AstroFile",
    config = true,
  },

  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      return require("astronvim.utils").extend_tbl(opts, {
        window = {
          winblend = vim.g.winblend,
        },
      })
    end,
  },

  --Renaming
  {
    "windwp/nvim-spectre",
    keys = {
      "<F2>",
      "<F2><F2>",
    },
    config = function()
      require("astronvim.utils").set_mappings {
        n = {
          ["<F2>"] = { "<cmd>lua require('spectre').open()<cr>" },
          ["<F2><F2>"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>" },
        },
      }
    end,
  },

  --Git
  {
    "sindrets/diffview.nvim",
    event = "User AstroGitFile",
  },

  --Lang
  { "folke/neodev.nvim" },


}

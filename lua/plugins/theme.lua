return {
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   config = function()
  --     require("rose-pine").setup({
  --       highlight_groups = {
  --         Normal = { bg = "#000000" },
  --         -- NormalNC = { bg = "#000000" },
  --         NormalNC = { bg = "#1e1e2e" },
  --       },
  --       styles = {
  --         transparency = true,
  --         italic = false,
  --       },
  --     })
  --
  --     vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  --       border = "rounded", -- You can use "single", "double", "rounded", "solid", or "shadow"
  --     })
  --     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
  --     vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#ffffff", bg = "#000000" })
  --   end,
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    config = function()
      vim.g.tokyonight_colors = { border = "#fff000" }

      require("tokyonight").setup({
        style = "night",
        transparent = false,
        on_colors = function(colors)
          colors.bg = "#000000"
          -- colors.hint = colors.orange
          colors.error = "#ff0000"
          -- colors.bg_visual = "#fff000"
          colors.border = "#565f89"
        end,
        on_highlights = function(hl, c)
          hl.DiagnosticUnnecessary = {}
          --   hl.NormalDiagnosticUnderlineError = {
          --     sp = "#ff0000",
          --     undercurl = true,
          --   }
        end,
      })
    end,
  },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   config = function()
  --     require("catppuccin").setup({
  --       flavour = "frappe",
  --       color_overrides = {
  --         frappe = {
  --           base = "#000000",
  --         },
  --       },
  --     })
  --   end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
      -- colorscheme = "catppuccin",
    },
  },
}

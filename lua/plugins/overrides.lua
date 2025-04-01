return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
            auto_close = true,
          },
        },
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<C-o>"] = cmp.mapping.complete(),
      })
    end,
  },
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     servers = {
  --       vtsls = {
  --         filetypes = {
  --           "javascript",
  --           "javascriptreact",
  --           "javascript.jsx",
  --           "typescript",
  --           "typescriptreact",
  --           "typescript.tsx",
  --         },
  --         settings = {
  --           vtsls = {
  --             tsserver = {
  --               path = "/Users/bodya/.nvm/versions/node/v22.12.0/lib/node_modules/typescript/lib",
  --             },
  --           },
  --           typescript = {
  --             plugins = {
  --               {
  --                 name = "@styled/typescript-styled-plugin",
  --                 -- location = vim.fn.getcwd() .. "/node_modules/@styled/typescript-styled-plugin",
  --                 -- location = "/Users/bodya/.nvm/versions/node/v22.12.0/lib/node_modules/@styled/typescript-styled-plugin",
  --                 location = vim.fn.system("npm prefix -g"):gsub("\n", "")
  --                   .. "/lib/node_modules/@styled/typescript-styled-plugin",
  --                 languages = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
  --               },
  --             },
  --           },
  --           javascript = {
  --             plugins = {
  --               {
  --                 name = "@styled/typescript-styled-plugin",
  --                 -- location = vim.fn.getcwd() .. "/node_modules/@styled/typescript-styled-plugin",
  --                 -- location = "/Users/bodya/.nvm/versions/node/v22.12.0/lib/node_modules/@styled/typescript-styled-plugin",
  --                 location = vim.fn.system("npm prefix -g"):gsub("\n", "")
  --                   .. "/lib/node_modules/@styled/typescript-styled-plugin",
  --                 languages = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
  --               },
  --             },
  --           },
  --           javascriptreact = {
  --             plugins = {
  --               {
  --                 name = "@styled/typescript-styled-plugin",
  --                 -- location = vim.fn.getcwd() .. "/node_modules/@styled/typescript-styled-plugin",
  --                 -- location = "/Users/bodya/.nvm/versions/node/v22.12.0/lib/node_modules/@styled/typescript-styled-plugin",
  --                 location = vim.fn.system("npm prefix -g"):gsub("\n", "")
  --                   .. "/lib/node_modules/@styled/typescript-styled-plugin",
  --                 languages = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
  --               },
  --             },
  --           },
  --           ["javascript.jsx"] = {
  --             plugins = {
  --               {
  --                 name = "@styled/typescript-styled-plugin",
  --                 -- location = vim.fn.getcwd() .. "/node_modules/@styled/typescript-styled-plugin",
  --                 -- location = "/Users/bodya/.nvm/versions/node/v22.12.0/lib/node_modules/@styled/typescript-styled-plugin",
  --                 location = vim.fn.system("npm prefix -g"):gsub("\n", "")
  --                   .. "/lib/node_modules/@styled/typescript-styled-plugin",
  --                 languages = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
  --               },
  --             },
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
  -- {
  --   "stevearc/conform.nvim",
  --   opts = {
  --     formatters = {
  --       prettier = {
  --         command = "/Users/bodya/.nvm/versions/node/v22.12.0/bin/prettier",
  --         prepend_args = { "--parser", "html" }, -- Force HTML parser for SVG files
  --       },
  --     },
  --     formatters_by_ft = { svg = { "prettier" } },
  --   },
  -- },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      local lualine = require("lualine")
      local lazy_status = require("lazy.status") -- to configure lazy pending updates count

      local colors = {
        blue = "#65D1FF",
        green = "#3EFFDC",
        violet = "#FF61EF",
        yellow = "#FFDA7B",
        red = "#FF4A4A",
        fg = "#c3ccdc",
        bg = "#112638",
        inactive_bg = "#2c3043",
      }

      local my_lualine_theme = {
        normal = {
          a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
          b = { bg = colors.bg, fg = colors.fg },
          c = { bg = colors.bg, fg = colors.fg },
        },
        insert = {
          a = { bg = colors.green, fg = colors.bg, gui = "bold" },
          b = { bg = colors.bg, fg = colors.fg },
          c = { bg = colors.bg, fg = colors.fg },
        },
        visual = {
          a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
          b = { bg = colors.bg, fg = colors.fg },
          c = { bg = colors.bg, fg = colors.fg },
        },
        command = {
          a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
          b = { bg = colors.bg, fg = colors.fg },
          c = { bg = colors.bg, fg = colors.fg },
        },
        replace = {
          a = { bg = colors.red, fg = colors.bg, gui = "bold" },
          b = { bg = colors.bg, fg = colors.fg },
          c = { bg = colors.bg, fg = colors.fg },
        },
        inactive = {
          a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
          b = { bg = colors.inactive_bg, fg = colors.semilightgray },
          c = { bg = colors.inactive_bg, fg = colors.semilightgray },
        },
      }

      local function get_buffer_count()
        local buffers = vim.fn.execute("ls")
        local count = 0
        for line in string.gmatch(buffers, "[^\r\n]+") do
          if string.match(line, "^%s*%d+") then
            count = count + 1
          end
        end
        return "(" .. count .. ")"
      end

      lualine.setup({
        options = {
          theme = my_lualine_theme,
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = {},
          lualine_x = {
            {
              lazy_status.updates,
              cond = lazy_status.has_updates,
              color = { fg = "#ff9e64" },
            },
            { get_buffer_count },
          },
        },
      })
    end,
  },
}
